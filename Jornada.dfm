object FJornada: TFJornada
  Left = 0
  Top = 0
  ClientHeight = 505
  ClientWidth = 730
  Caption = 'LIQUIDACION DE JORNADA LABORAL'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 0
    Width = 730
    Height = 505
    Hint = ''
    ActivePage = UniTabSheet1
    Align = alClient
    TabOrder = 0
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Registro'
      object UniLabel1: TUniLabel
        Left = 152
        Top = 16
        Width = 396
        Height = 25
        Hint = ''
        Caption = 'LIQUIDACION JORNADA DE TRABAJO'
        ParentFont = False
        Font.Height = -21
        Font.Style = [fsBold]
        TabOrder = 0
      end
      object UniLabel2: TUniLabel
        Left = 16
        Top = 88
        Width = 61
        Height = 16
        Hint = ''
        Caption = 'Empleado'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 1
      end
      object ECod: TUniEdit
        Left = 88
        Top = 88
        Width = 113
        Hint = ''
        Text = ''
        TabOrder = 2
        ReadOnly = True
      end
      object ENombre: TUniEdit
        Left = 215
        Top = 88
        Width = 432
        Hint = ''
        Text = ''
        TabOrder = 3
        ReadOnly = True
      end
      object UniSpeedButton1: TUniSpeedButton
        Left = 653
        Top = 88
        Width = 44
        Height = 22
        Hint = ''
        Caption = ''
        ParentColor = False
        Color = clWindow
        TabOrder = 4
        OnClick = UniSpeedButton1Click
      end
      object UniLabel3: TUniLabel
        Left = 16
        Top = 152
        Width = 37
        Height = 16
        Hint = ''
        Caption = 'Fecha'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 5
      end
      object Fecha: TUniDateTimePicker
        Left = 16
        Top = 174
        Width = 153
        Hint = ''
        DateTime = 44398.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 6
        OnChange = FechaChange
      end
      object UniLabel4: TUniLabel
        Left = 325
        Top = 123
        Width = 72
        Height = 23
        Hint = ''
        Caption = 'Horario'
        ParentFont = False
        Font.Height = -19
        Font.Style = [fsBold]
        TabOrder = 7
      end
      object UniLabel5: TUniLabel
        Left = 198
        Top = 152
        Width = 69
        Height = 16
        Hint = ''
        Caption = 'Hora Inicio'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 8
      end
      object btnAgregar: TUniSpeedButton
        Left = 493
        Top = 163
        Width = 100
        Height = 33
        Hint = ''
        Caption = 'AGREGAR'
        ParentColor = False
        Color = clWindow
        TabOrder = 9
        OnClick = btnAgregarClick
      end
      object ULista: TUniListBox
        Left = 166
        Top = 216
        Width = 531
        Height = 66
        Hint = ''
        TabOrder = 10
      end
      object UniLabel8: TUniLabel
        Left = 16
        Top = 216
        Width = 20
        Height = 16
        Hint = ''
        Caption = 'D'#237'a'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 11
      end
      object lblDia: TUniLabel
        Left = 16
        Top = 238
        Width = 27
        Height = 19
        Hint = ''
        Caption = 'D'#237'a'
        ParentFont = False
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 12
      end
      object lblFestivo: TUniLabel
        Left = 16
        Top = 263
        Width = 58
        Height = 19
        Hint = ''
        Visible = False
        Caption = 'Festivo'
        ParentFont = False
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 13
      end
    end
  end
  object UniLabel6: TUniLabel
    Left = 347
    Top = 176
    Width = 63
    Height = 16
    Hint = ''
    Caption = 'Hora Final'
    ParentFont = False
    Font.Height = -13
    Font.Style = [fsBold]
    TabOrder = 1
  end
  object HoraF: TUniDateTimePicker
    Left = 347
    Top = 198
    Width = 102
    Hint = ''
    DateTime = 0.500000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    Kind = tUniTime
    FirstDayOfWeek = dowLocaleDefault
    TabOrder = 2
    Color = clWhite
  end
  object HoraI: TUniDateTimePicker
    Left = 202
    Top = 198
    Width = 103
    Hint = ''
    DateTime = 0.500000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    Kind = tUniTime
    FirstDayOfWeek = dowLocaleDefault
    TabOrder = 3
    Color = clWhite
  end
end
