object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 471
  ClientWidth = 781
  Caption = 'SISTEMA DE LIQUIDACION DE HORAS TRABAJADAS'
  WindowState = wsMaximized
  OldCreateOrder = False
  Menu = UniMainMenu1
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniMainMenu1: TUniMainMenu
    Left = 72
    Top = 24
    object opEmpleados: TUniMenuItem
      Caption = 'Empleados'
      OnClick = opEmpleadosClick
    end
    object Usuarios1: TUniMenuItem
      Caption = 'Usuarios'
    end
    object Configuraciones1: TUniMenuItem
      Caption = 'Configuraciones'
    end
    object Liquidaciones1: TUniMenuItem
      Caption = 'Liquidaciones'
      OnClick = Liquidaciones1Click
    end
  end
end
