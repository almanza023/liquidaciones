unit Jornada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox,
  uniDateTimePicker, uniButton, uniBitBtn, uniSpeedButton, uniEdit, uniLabel,
  uniPanel, uniPageControl, uniGUIBaseClasses;

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
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniComboBox1: TUniComboBox;
    UniSpeedButton2: TUniSpeedButton;
    UniDBGrid1: TUniDBGrid;
    HoraAsignacion: TUniDateTimePicker;
    UniDateTimePicker2: TUniDateTimePicker;
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure ShowCallback(Sender: TComponent; Asresult: Integer);
  private
    { Private declarations }
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

procedure TFJornada.UniSpeedButton1Click(Sender: TObject);
begin
UniMainModule.opcion:=1;
Buscar.FBuscar.ShowModal(ShowCallback);
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