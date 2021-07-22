object FDatosEmpleado: TFDatosEmpleado
  Left = 0
  Top = 0
  ClientHeight = 354
  ClientWidth = 457
  Caption = 'DATOS DE EMPLEADOS'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 354
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = ''
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 256
    ExplicitHeight = 128
    object UniLabel1: TUniLabel
      Left = 123
      Top = 25
      Width = 230
      Height = 25
      Hint = ''
      Caption = 'DATOS DE EMPLEADO'
      Align = alCustom
      ParentFont = False
      Font.Color = clMaroon
      Font.Height = -21
      Font.Style = [fsBold]
      TabOrder = 1
    end
    object UniLabel2: TUniLabel
      Left = 40
      Top = 72
      Width = 109
      Height = 23
      Hint = ''
      Caption = 'Documento'
      ParentFont = False
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 2
    end
    object UniEdit1: TUniEdit
      Left = 155
      Top = 73
      Width = 265
      Hint = ''
      Text = ''
      TabOrder = 3
    end
    object UniSpeedButton1: TUniSpeedButton
      Left = 32
      Top = 296
      Width = 117
      Height = 41
      Hint = ''
      Caption = 'Nuevo'
      ParentFont = False
      Font.Height = -12
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWindow
      TabOrder = 4
    end
    object UniSpeedButton2: TUniSpeedButton
      Left = 168
      Top = 296
      Width = 117
      Height = 41
      Hint = ''
      Caption = 'Guardar'
      ParentFont = False
      Font.Height = -12
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWindow
      TabOrder = 5
    end
    object UniSpeedButton3: TUniSpeedButton
      Left = 303
      Top = 296
      Width = 117
      Height = 41
      Hint = ''
      Caption = 'Cancelaar'
      ParentFont = False
      Font.Height = -12
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWindow
      TabOrder = 6
    end
    object UniNumberEdit1: TUniNumberEdit
      Left = 155
      Top = 248
      Width = 265
      Hint = ''
      TabOrder = 7
      DecimalSeparator = ','
    end
  end
  object UniLabel3: TUniLabel
    Left = 40
    Top = 112
    Width = 86
    Height = 23
    Hint = ''
    Caption = 'Nombres'
    ParentFont = False
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 1
  end
  object UniEdit2: TUniEdit
    Left = 155
    Top = 112
    Width = 265
    Hint = ''
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 2
  end
  object UniLabel4: TUniLabel
    Left = 40
    Top = 152
    Width = 88
    Height = 23
    Hint = ''
    Caption = 'Apellidos'
    ParentFont = False
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 3
  end
  object UniEdit3: TUniEdit
    Left = 155
    Top = 153
    Width = 265
    Hint = ''
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 4
  end
  object UniLabel5: TUniLabel
    Left = 40
    Top = 200
    Width = 56
    Height = 23
    Hint = ''
    Caption = 'Cargo'
    ParentFont = False
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 5
  end
  object UniEdit4: TUniEdit
    Left = 155
    Top = 201
    Width = 265
    Hint = ''
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 6
  end
  object UniLabel6: TUniLabel
    Left = 40
    Top = 248
    Width = 49
    Height = 23
    Hint = ''
    Caption = 'Total'
    ParentFont = False
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 7
  end
end
