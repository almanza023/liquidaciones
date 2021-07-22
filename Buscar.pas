unit Buscar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, uniEdit, uniMemo, uniDBMemo,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid;

type
  TFBuscar = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniDBMemo1: TUniDBMemo;
    Busqueda: TUniEdit;
    DataSource1: TDataSource;
    procedure BusquedaChange(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FBuscar: TFBuscar;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FBuscar: TFBuscar;
begin
  Result := TFBuscar(UniMainModule.GetFormInstance(TFBuscar));
end;

procedure TFBuscar.BusquedaChange(Sender: TObject);

   var
  opcion: Integer;
  cadena: string;

begin
  opcion := UniMainModule.opcion;
  if (opcion = 0) then
  begin

     cadena := ' select id as codigo, nombre as descripcion  from cargos Where nombre like ''%'
        + Busqueda.Text + '%''';

    if (Length(Busqueda.Text) >= 3) and (Busqueda.Text <> '') then
    begin

      UniMainModule.QueryBuscar.SQL.Clear;
      UniMainModule.QueryBuscar.SQL.Add(cadena);
      UniMainModule.QueryBuscar.Open;
      UniDBMemo1.DataField := 'descripcion'
    end
    else
    begin
    cadena:='select id as codigo, nombre as descripcion from cargos order by id desc';
      UniMainModule.QueryBuscar.SQL.Clear;
      UniMainModule.QueryBuscar.SQL.Add(cadena);
      UniMainModule.QueryBuscar.Open;
      UniDBMemo1.DataField := 'descripcion'
    end;


  end;
  if (opcion = 1) then
  begin
       cadena := ' select id as codigo, CONCAT(nombres,'' '',apellidos) as descripcion  from empleados Where nombres like ''%'
        + Busqueda.Text + '%'' ';

    if (Length(Busqueda.Text) >= 3) and (Busqueda.Text <> '') then
    begin

      UniMainModule.QueryBuscar.SQL.Clear;
      UniMainModule.QueryBuscar.SQL.Add(cadena);
      UniMainModule.QueryBuscar.Open;
      UniDBMemo1.DataField := 'descripcion'
    end;


  end;
end;

procedure TFBuscar.UniDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFBuscar.UniFormShow(Sender: TObject);
var
cadena :string;
begin
  if UniMainModule.opcion=0 then
  begin
      cadena:='select id as codigo, nombre as descripcion from cargos order by id desc';
      UniMainModule.QueryBuscar.SQL.Clear;
      UniMainModule.QueryBuscar.SQL.Add(cadena);
      UniMainModule.QueryBuscar.Open;
      UniDBMemo1.DataField := 'descripcion'
  end;
end;

end.
