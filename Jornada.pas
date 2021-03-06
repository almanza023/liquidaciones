unit Jornada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox,
  uniDateTimePicker, uniButton, uniBitBtn, uniSpeedButton, uniEdit, uniLabel,
  uniPanel, uniPageControl, uniGUIBaseClasses, uniListBox, uniMemo, DateUtils;

type
  TFJornada = class(TUniForm)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    ECod: TUniEdit;
    ENombre: TUniEdit;
    UniSpeedButton1: TUniSpeedButton;
    UniLabel3: TUniLabel;
    Fecha: TUniDateTimePicker;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    btnAgregar: TUniSpeedButton;
    HoraF: TUniDateTimePicker;
    HoraI: TUniDateTimePicker;
    ULista: TUniListBox;
    UniLabel8: TUniLabel;
    lblDia: TUniLabel;
    lblFestivo: TUniLabel;
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure ShowCallback(Sender: TComponent; Asresult: Integer);
    procedure btnAgregarClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure FechaChange(Sender: TObject);
    procedure obtenerNombreDia();

    
  private
    { Private declarations }
    hfjd1, hfjd2, hfjn, hirn, hijd: TDateTime;
    isfestivo: Boolean;
  public
    { Public declarations }
  end;

function FJornada: TFJornada;


implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Buscar;

function FJornada: TFJornada;
begin
  Result := TFJornada(UniMainModule.GetFormInstance(TFJornada));
end;

function getNombreDia(fecha: TDateTime): string;
var 
resul: string;
  begin
   resul:=FormatDateTime('ddd', (fecha));
 end;

procedure TFJornada.UniFormShow(Sender: TObject);
var 
dia: string;
begin
    Fecha.DateTime:=Now;
    obtenerNombreDia;
    UniMainModule.Query.SQL.Clear;
    UniMainModule.Query.SQL.Text:='SELECT * from parametros';
    UniMainModule.Query.Open;
    hfjd1:=UniMainModule.Query.FieldByName('hfjd1').AsDateTime;
    hfjd2:=UniMainModule.Query.FieldByName('hfjd2').AsDateTime;
    hfjn:=UniMainModule.Query.FieldByName('hfjn').AsDateTime;
    hirn:=UniMainModule.Query.FieldByName('hirn').AsDateTime;
    hijd:=UniMainModule.Query.FieldByName('hijd').AsDateTime;
    
end;

procedure TFJornada.UniSpeedButton1Click(Sender: TObject);
begin
UniMainModule.opcion:=1;
Buscar.FBuscar.ShowModal(ShowCallback);
end;

procedure TFJornada.btnAgregarClick(Sender: TObject);
var
tipoh, dia, ho, hed, rn, rfd, hen, hefd, hefn: string;
horasExcende: TTime;
begin
 ULista.Items.Clear;
  dia:=FormatDateTime('ddd', (Fecha.DateTime));
  



  
  //DIURNOS (L-V)
  if (HoraI.DateTime>=StrToTime('6:00:00')) AND (HoraI.DateTime<StrToTime('18:00:00')) then
  begin      
      if dia='vie.' then
      begin
      ho:=FormatDateTime('hh', (hfjd2 - HoraI.DateTime));
      hed:='00';
      if HoraF.DateTime>=hfjd2 then
      begin
       hed:=FormatDateTime('hh', (HoraF.DateTime - hfjd2));
      end;
      if isfestivo then
      begin                   
           rfd:='10';
           hefd:='2';
           ULista.Items.Add('RECARGO FESTIVO DIURNO: '+rfd);
           ULista.Items.Add('HORAS EXTRAS FESTIVO DIURNAS: '+hed);
           exit;
      end;
      ULista.Items.Add('FECHA: '+DateToStr(Fecha.DateTime));
      ULista.Items.Add('HORAS ORDINADARIAS: '+ho);
      ULista.Items.Add('HORAS EXTRAS DIURNAS: '+hed);
      
      end
      else
      begin
      ULista.Items.Add('FECHA: '+DateToStr(Fecha.DateTime));
      ho:=FormatDateTime('hh', (hfjd1 - HoraI.DateTime));      
      hed:=FormatDateTime('hh', (HoraF.DateTime - hfjd1 )); 
      if StrToInt(FormatDateTime('hh', (HoraF.DateTime - HoraI.DateTime)))<10 then
      begin
      hed:='00';     
      end;
      if isfestivo then
      begin                         
           rfd:='10';
           hefd:='2';
           ULista.Items.Add('RECARGO FESTIVO DIURNO: '+rfd);
           ULista.Items.Add('HORAS EXTRAS FESTIVO DIURNAS: '+hed);
           exit;
      end;
      hed:=FormatDateTime('hh', (HoraF.DateTime - hfjd1));
      ULista.Items.Add('HORAS ORDINADARIAS: '+ho);
      ULista.Items.Add('HORAS EXTRAS DIURNAS: '+hed);
      end; 

      
      
       
  end
  else
  begin 
      // NOCTURNOS (L-V)    
      ULista.Items.Add('FECHA: '+DateToStr(Fecha.DateTime));
     
      if HoraI.Text<>'18:00:00' then
      begin
        horasExcende:=HoraI.DateTime - StrToTime('18:00:00');
        hfjn:=hfjn+horasExcende; 
        hen:=FormatDateTime('hh', (hijd - hfjn));  
      end
      else
      begin
        hen:=FormatDateTime('hh', (HoraF.DateTime - hfjn+24));
      end;      
      ho:=FormatDateTime('hh  ', (hfjn +24 - HoraI.DateTime ));
      rn:=FormatDateTime('hh', (hfjn+24 - hirn ));             
      hed:=FormatDateTime('hh', (HoraF.DateTime - hijd));
      

      ULista.Items.Add('HORAS ORDINADARIAS: '+ho);
      ULista.Items.Add('RECARGO NOCTRUNO: '+rn);
      ULista.Items.Add('HORAS EXTRAS NOCTRUNAS: '+hen);
      ULista.Items.Add('HORAS EXTRAS DIURNAS: '+hed);
       
  end;
   
end;

procedure TFJornada.FechaChange(Sender: TObject);    
begin
    obtenerNombreDia;
end;

procedure TFJornada.obtenerNombreDia;
begin
   lblDia.Caption:=FormatDateTime('dddd', (Fecha.DateTime)).ToUpper;
    UniMainModule.Query.SQL.Clear;
    UniMainModule.Query.SQL.Text:='SELECT * from festivos where fecha=:Fec and estado=1';
    UniMainModule.Query.ParamByName('Fec').Value:=FormatDateTime('yyyy-mm-dd', (Fecha.DateTime));
    UniMainModule.Query.Open;
    if not UniMainModule.Query.IsEmpty then
    begin
        lblFestivo.Visible:=true;
        isfestivo:=true;
    end
    else
    begin
      lblFestivo.Visible:=false;
      isfestivo:=false;
    end;
       
    
end;

procedure TFJornada.ShowCallback(Sender: TComponent; Asresult: Integer);
begin
  if not(UniMainModule.QueryBuscar.IsEmpty)  then
  begin
    ECod.Text := (UniMainModule.QueryBuscar.FieldByName('Codigo').AsString);
    ENombre.Text := UniMainModule.QueryBuscar.FieldByName('descripcion')
      .AsString;
  end;
end;

end.
