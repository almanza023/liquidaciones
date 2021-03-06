unit DatoEmpleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniMultiItem, uniComboBox, uniEdit, uniButton,
  uniBitBtn, uniSpeedButton, uniLabel, uniGUIBaseClasses, uniPanel;

type
  TFDatoEmpleados = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    EDocumento: TUniEdit;
    ubGuardar: TUniSpeedButton;
    ubCancelar: TUniSpeedButton;
    ETotal: TUniNumberEdit;
    ENombres: TUniEdit;
    EApellidos: TUniEdit;
    ECargo: TUniEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    CEstado: TUniComboBox;
    ECargoId: TUniEdit;
    UniSpeedButton1: TUniSpeedButton;
    procedure UniFormShow(Sender: TObject);
    procedure ShowCallback(Sender: TComponent; Asresult: Integer);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure operacionesSQL(tipo: Integer; id: Integer);
    procedure ubGuardarClick(Sender: TObject);
    procedure limpiar();
    procedure ubCancelarClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
     id: Integer;
     nuevo: Boolean;
  end;

function FDatoEmpleados: TFDatoEmpleados;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Buscar, Empleados;

function FDatoEmpleados: TFDatoEmpleados;
begin
  Result := TFDatoEmpleados(UniMainModule.GetFormInstance(TFDatoEmpleados));
end;

procedure TFDatoEmpleados.UniFormShow(Sender: TObject);

begin
  if nuevo then
  begin
     limpiar;
  end
  else
  begin
   if not UniMainModule.QueryTabla.FieldByName('id').AsString.IsEmpty then
  begin
    id := UniMainModule.QueryTabla.FieldByName('id').AsInteger;
    EDocumento.Text := UniMainModule.QueryTabla.FieldByName
      ('documento').AsString;
    ENombres.Text := UniMainModule.QueryTabla.FieldByName('nombres').AsString;
    EApellidos.Text := UniMainModule.QueryTabla.FieldByName
      ('apellidos').AsString;
    ECargo.Text := UniMainModule.QueryTabla.FieldByName('cargo').AsString;
    ECargoId.Text := UniMainModule.QueryTabla.FieldByName('codid').AsString;
    ETotal.Text := UniMainModule.QueryTabla.FieldByName('total').AsString;
    CEstado.Text := UniMainModule.QueryTabla.FieldByName('estado').AsString;
  end;
  end;




end;

procedure TFDatoEmpleados.limpiar;
begin
    EDocumento.Text :='';
    ENombres.Text := '';
    EApellidos.Text := '';
    ECargo.Text :='';
    ECargoId.Text := '';
    ETotal.Text := '';
    CEstado.Text := 'ACTIVO';
end;

procedure TFDatoEmpleados.operacionesSQL(tipo: Integer; id: Integer);
begin
  UniMainModule.Query.SQL.Clear;
  if tipo = 1 then
  begin   UniMainModule.Query.SQL.Text :=
      'INSERT INTO empleados (cargo_id, nombres, apellidos, documento, total, estado) '
      + ' VALUES (:Car, :Nom, :Ape, :Doc, :Tot, :Est )';
    UniMainModule.Query.ParamByName('Car').Value := StrToInt(ECargoId.Text);
    UniMainModule.Query.ParamByName('Nom').Value := ENombres.Text;
    UniMainModule.Query.ParamByName('Ape').Value := EApellidos.Text;
    UniMainModule.Query.ParamByName('Doc').Value := EDocumento.Text;
    UniMainModule.Query.ParamByName('Tot').Value := StrToFloat(ETotal.Text);
    UniMainModule.Query.ParamByName('Est').Value := CEstado.Text;
    UniMainModule.Query.ExecSQL;
  end
  else
  begin
    UniMainModule.Query.SQL.Text :=
      'UPDATE empleados SET cargo_id=:Car, nombres=:Nom, apellidos=:Ape, documento=:Doc, total=:Tot, estado=:Est'
      + ' WHERE id=:Id ';
    UniMainModule.Query.ParamByName('Car').Value := StrToInt(ECargoId.Text);
    UniMainModule.Query.ParamByName('Nom').Value := ENombres.Text;
    UniMainModule.Query.ParamByName('Ape').Value := EApellidos.Text;
    UniMainModule.Query.ParamByName('Doc').Value := EDocumento.Text;
    UniMainModule.Query.ParamByName('Tot').Value := StrToFloat(ETotal.Text);
    UniMainModule.Query.ParamByName('Est').Value := CEstado.Text;
    UniMainModule.Query.ParamByName('Id').Value := id;
    UniMainModule.Query.ExecSQL;
  end;
end;

procedure TFDatoEmpleados.ShowCallback(Sender: TComponent; Asresult: Integer);
begin
  if not(UniMainModule.QueryBuscar.IsEmpty) then
  begin
    ECargoId.Text := (UniMainModule.QueryBuscar.FieldByName('Codigo').AsString);
    ECargo.Text := UniMainModule.QueryBuscar.FieldByName('descripcion')
      .AsString;
  end;
end;

procedure TFDatoEmpleados.ubCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFDatoEmpleados.ubGuardarClick(Sender: TObject);
begin
  if id > 0 then
  begin
    if ENombres.Text = '' then
    begin
      ShowMessage('Ingrese nombres de empleado');
      ENombres.SetFocus;
      exit;
    end;
    if EApellidos.Text = '' then
    begin
      ShowMessage('Ingrese apellidos de empleado');
      EApellidos.SetFocus;
      exit;
    end;
    if EDocumento.Text = '' then
    begin
      ShowMessage('Ingrese documento de empleado');
      EDocumento.SetFocus;
      exit;
    end;
    if ECargoId.Text = '' then
    begin
      ShowMessage('Debe seleccionar un cargo');
      EDocumento.SetFocus;
      exit;
    end;
    operacionesSQL(0, id);
    ShowMessage('Datos Actualizados Exitosamente');
    Empleados.FEmpleados.OnShow(Self);
    Close;

  end
  else
  begin
    if ENombres.Text = '' then
    begin
      ShowMessage('Ingrese nombres de empleado');
      ENombres.SetFocus;
      exit;
    end;
    if EApellidos.Text = '' then
    begin
      ShowMessage('Ingrese apellidos de empleado');
      EApellidos.SetFocus;
      exit;
    end;
    if EDocumento.Text = '' then
    begin
      ShowMessage('Ingrese documento de empleado');
      EDocumento.SetFocus;
      exit;
    end;
    if ECargoId.Text = '' then
    begin
      ShowMessage('Debe seleccionar un cargo');
      EDocumento.SetFocus;
      exit;
    end;
    operacionesSQL(1, 0);
    ShowMessage('Datos Registrados Exitosamente');
    Empleados.FEmpleados.OnShow(Self);
    Close;
  end;
end;

procedure TFDatoEmpleados.UniSpeedButton1Click(Sender: TObject);
begin
  UniMainModule.opcion := 0;
  Buscar.FBuscar.ShowModal(ShowCallback);
end;

end.
