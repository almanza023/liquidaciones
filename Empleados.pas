unit Empleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, uniButton, uniBitBtn, uniSpeedButton,
  uniEdit, uniLabel, uniBasicGrid, uniDBGrid, uniPanel, uniPageControl,
  uniGUIBaseClasses;

type
  TFEmpleados = class(TUniForm)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    UniEdit1: TUniEdit;
    ubNuevo: TUniSpeedButton;
    ubCancelar: TUniSpeedButton;
    DataSource: TDataSource;
    procedure ubNuevoClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
    procedure ubCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FEmpleados: TFEmpleados;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DatosEmpleado, DatoEmpleados;

function FEmpleados: TFEmpleados;
begin
  Result := TFEmpleados(UniMainModule.GetFormInstance(TFEmpleados));
end;

procedure TFEmpleados.ubCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFEmpleados.ubNuevoClick(Sender: TObject);
begin
DatoEmpleados.FDatoEmpleados.ShowModal();
 DatoEmpleados.FDatoEmpleados.nuevo:=True;
end;

procedure TFEmpleados.UniDBGrid1DblClick(Sender: TObject);
begin
  DatoEmpleados.FDatoEmpleados.nuevo:=False;
  DatoEmpleados.FDatoEmpleados.OnShow(Self);

end;

procedure TFEmpleados.UniFormShow(Sender: TObject);
begin
   UniMainModule.QueryTabla.SQL.Clear;
   UniMainModule.QueryTabla.SQL.Text:='SELECT e.id, e.nombres, e.apellidos, e.documento, e.total, e.estado, c.id as codid, c.nombre as cargo'+
   ' FROM empleados e INNER JOIN cargos c on c.id=e.cargo_id order by e.id desc';
   UniMainModule.QueryTabla.Open();
end;

end.
