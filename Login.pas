unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniEdit, uniLabel,
  uniGUIBaseClasses, uniPanel, uniButton, uniBitBtn, uniSpeedButton;

type
  TFLogin = class(TUniLoginForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    EUsuario: TUniEdit;
    UniLabel2: TUniLabel;
    UbIngresar: TUniSpeedButton;
    UbCancelar: TUniSpeedButton;
    EClave: TUniEdit;
    UniLabel3: TUniLabel;
    procedure UbIngresarClick(Sender: TObject);
    procedure UbCancelarClick(Sender: TObject);
    procedure EClaveKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FLogin: TFLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function FLogin: TFLogin;
begin
  Result := TFLogin(UniMainModule.GetFormInstance(TFLogin));
end;

procedure TFLogin.EClaveKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
    UbIngresar.Click;
end;
end;

procedure TFLogin.UbCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFLogin.UbIngresarClick(Sender: TObject);
begin

if EUsuario.Text='' then
begin
   ShowMessage('Debe ingresar el usuario');
   EClave.SetFocus;
   exit;
end;

if EClave.Text='' then
begin
   ShowMessage('Debe ingresar una clave');
   EClave.SetFocus;
   exit;
end;
UniMainModule.Query.SQL.Clear;
UniMainModule.Query.SQL.Text:='SELECT * FROM usuarios where usuario=:Usu and estado=1';
UniMainModule.Query.ParamByName('Usu').Value:=EUsuario.Text;
UniMainModule.Query.Open;

if UniMainModule.Query.IsEmpty then
begin
  ShowMessage('No existen ningun registro con ul usuario');
end
else
begin
  if EClave.Text=UniMainModule.Query.FieldByName('clave').AsString then
  begin
     ModalResult := mrOk;
    CloseModal;
  end
  else
  begin
    ShowMessage('Usuario y contraseņa no valida. Intente nuevamente');
  end;
end;


end;

initialization
  RegisterAppFormClass(TFLogin);

end.
