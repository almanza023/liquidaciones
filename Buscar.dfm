object FBuscar: TFBuscar
  Left = 0
  Top = 0
  ClientHeight = 513
  ClientWidth = 481
  Caption = 'BUSCAR'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 10
    Top = 39
    Width = 453
    Height = 426
    Hint = ''
    DataSource = DataSource1
    LoadMask.Message = 'Loading data...'
    TabOrder = 0
    OnDblClick = UniDBGrid1DblClick
    Columns = <
      item
        FieldName = 'codigo'
        Title.Alignment = taCenter
        Title.Caption = 'Codigo'
        Width = 88
      end
      item
        FieldName = 'descripcion'
        Title.Alignment = taCenter
        Title.Caption = 'Descripcion'
        Width = 344
      end>
  end
  object UniDBMemo1: TUniDBMemo
    Left = 8
    Top = 424
    Width = 453
    Height = 71
    Hint = ''
    TabOrder = 1
  end
  object Busqueda: TUniEdit
    Left = 8
    Top = 8
    Width = 453
    Height = 25
    Hint = ''
    Text = ''
    TabOrder = 2
    OnChange = BusquedaChange
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.QueryBuscar
    Left = 320
    Top = 176
  end
end
