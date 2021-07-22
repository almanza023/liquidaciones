unit DatosEmpleado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniEdit, uniButton, uniBitBtn, uniSpeedButton,
  uniLabel, uniGUIBaseClasses, uniPanel;

type
  TFDatosEmpleado = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniEdit1: TUniEdit;
    UniLabel3: TUniLabel;
    UniEdit2: TUniEdit;
    UniLabel4: TUniLabel;
    UniEdit3: TUniEdit;
    UniLabel5: TUniLabel;
    UniEdit4: TUniEdit;
    UniLabel6: TUniLabel;
    UniSpeedButton1: TUniSpeedButton;
    UniSpeedButton2: TUniSpeedButton;
    UniSpeedButton3: TUniSpeedButton;
    UniNumberEdit1: TUniNumberEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FDatosEmpleado: TFDatosEmpleado;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FDatosEmpleado: TFDatosEmpleado;
begin
  Result := TFDatosEmpleado(UniMainModule.GetFormInstance(TFDatosEmpleado));
end;

end.
