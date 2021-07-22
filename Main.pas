unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Vcl.Menus, uniMainMenu;

type
  TMainForm = class(TUniForm)
    UniMainMenu1: TUniMainMenu;
    Usuarios1: TUniMenuItem;
    Configuraciones1: TUniMenuItem;
    opEmpleados: TUniMenuItem;
    Liquidaciones1: TUniMenuItem;
    procedure opEmpleadosClick(Sender: TObject);
    procedure Liquidaciones1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, DatosEmpleado, Login,
  DatoEmpleados, Empleados, Jornada;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.Liquidaciones1Click(Sender: TObject);
begin
    Jornada.FJornada.ShowModal();
end;

procedure TMainForm.opEmpleadosClick(Sender: TObject);
begin
    Empleados.FEmpleados.ShowModal();
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
