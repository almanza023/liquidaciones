object FEmpleados: TFEmpleados
  Left = 0
  Top = 0
  ClientHeight = 448
  ClientWidth = 776
  Caption = 'EMPLEADOS'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 0
    Width = 776
    Height = 448
    Hint = ''
    ActivePage = UniTabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 72
    ExplicitTop = 8
    ExplicitWidth = 289
    ExplicitHeight = 193
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Datos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 743
      ExplicitHeight = 349
      object UniDBGrid1: TUniDBGrid
        Left = 11
        Top = 48
        Width = 742
        Height = 289
        Hint = ''
        DataSource = DataSource
        LoadMask.Message = 'Loading data...'
        TabOrder = 0
        OnDblClick = UniDBGrid1DblClick
        Columns = <
          item
            FieldName = 'nombres'
            Title.Caption = 'Nombres'
            Width = 156
            ReadOnly = True
          end
          item
            FieldName = 'apellidos'
            Title.Caption = 'Apellidos'
            Width = 189
            ReadOnly = True
          end
          item
            FieldName = 'documento'
            Title.Caption = 'Documento'
            Width = 158
            ReadOnly = True
          end
          item
            FieldName = 'total'
            Title.Caption = 'Total'
            Width = 155
            ReadOnly = True
          end
          item
            FieldName = 'estado'
            Title.Caption = 'Estado'
            Width = 61
            ReadOnly = True
          end>
      end
      object UniLabel1: TUniLabel
        Left = 16
        Top = 16
        Width = 51
        Height = 18
        Hint = ''
        Caption = 'Buscar'
        ParentFont = False
        Font.Height = -15
        Font.Style = [fsBold]
        TabOrder = 1
      end
      object UniEdit1: TUniEdit
        Left = 88
        Top = 16
        Width = 665
        Height = 26
        Hint = ''
        Text = ''
        TabOrder = 2
      end
      object ubNuevo: TUniSpeedButton
        Left = 16
        Top = 360
        Width = 154
        Height = 44
        Hint = ''
        Caption = 'NUEVO'
        ParentFont = False
        Font.Height = -16
        Font.Style = [fsBold]
        ParentColor = False
        Color = clWindow
        TabOrder = 3
        OnClick = ubNuevoClick
      end
      object ubCancelar: TUniSpeedButton
        Left = 216
        Top = 360
        Width = 161
        Height = 44
        Hint = ''
        Caption = 'CANCELAR'
        ParentFont = False
        Font.Height = -16
        Font.Style = [fsBold]
        ParentColor = False
        Color = clWindow
        TabOrder = 4
      end
    end
  end
  object DataSource: TDataSource
    DataSet = UniMainModule.QueryTabla
    Left = 412
    Top = 392
  end
end
