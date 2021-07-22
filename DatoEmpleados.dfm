object FDatoEmpleados: TFDatoEmpleados
  Left = 0
  Top = 0
  ClientHeight = 443
  ClientWidth = 494
  Caption = 'DATOS DE EMPLEADO'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 494
    Height = 443
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = ''
    ExplicitWidth = 462
    ExplicitHeight = 444
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
    object EDocumento: TUniEdit
      Left = 155
      Top = 73
      Width = 304
      Hint = ''
      Text = ''
      TabOrder = 3
    end
    object ubGuardar: TUniSpeedButton
      Left = 32
      Top = 344
      Width = 117
      Height = 41
      Hint = ''
      Caption = 'GUARDAR'
      ParentFont = False
      Font.Height = -12
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWindow
      TabOrder = 4
      OnClick = ubGuardarClick
    end
    object ubCancelar: TUniSpeedButton
      Left = 167
      Top = 344
      Width = 117
      Height = 41
      Hint = ''
      Caption = 'CANCELAR'
      ParentFont = False
      Font.Height = -12
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWindow
      TabOrder = 5
      OnClick = ubCancelarClick
    end
    object ETotal: TUniNumberEdit
      Left = 155
      Top = 248
      Width = 304
      Hint = ''
      TabOrder = 6
      DecimalSeparator = ','
    end
    object ENombres: TUniEdit
      Left = 155
      Top = 112
      Width = 304
      Hint = ''
      CharCase = ecUpperCase
      Text = ''
      TabOrder = 7
    end
    object EApellidos: TUniEdit
      Left = 155
      Top = 153
      Width = 304
      Hint = ''
      CharCase = ecUpperCase
      Text = ''
      TabOrder = 8
    end
    object ECargo: TUniEdit
      Left = 200
      Top = 201
      Width = 220
      Hint = ''
      CharCase = ecUpperCase
      Text = ''
      TabOrder = 9
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
      TabOrder = 10
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
      TabOrder = 11
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
      TabOrder = 12
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
      TabOrder = 13
    end
    object UniLabel7: TUniLabel
      Left = 40
      Top = 296
      Width = 65
      Height = 23
      Hint = ''
      Caption = 'Estado'
      ParentFont = False
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 14
    end
    object CEstado: TUniComboBox
      Left = 155
      Top = 296
      Width = 304
      Hint = ''
      Text = 'CEstado'
      Items.Strings = (
        'ACTIVO'
        'INACTIVO')
      ItemIndex = 0
      TabOrder = 15
      IconItems = <>
    end
    object ECargoId: TUniEdit
      Left = 155
      Top = 200
      Width = 39
      Hint = ''
      CharCase = ecUpperCase
      Text = ''
      TabOrder = 16
      ReadOnly = True
    end
    object UniSpeedButton1: TUniSpeedButton
      Left = 426
      Top = 200
      Width = 33
      Height = 22
      Hint = ''
      Caption = ''
      ParentColor = False
      Color = clWindow
      TabOrder = 17
      OnClick = UniSpeedButton1Click
    end
  end
end
