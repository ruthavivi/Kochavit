inherited frmDrAviraReport: TfrmDrAviraReport
  Left = 103
  Caption = #1514#1493#1510#1488#1493#1514' '#1513#1488#1497#1500#1514#1492' '#1506#1489#1497#1512#1493#1514' '#1493#1491#1493#1495#1493#1514
  ClientHeight = 337
  ClientWidth = 676
  OldCreateOrder = True
  OnCreate = FormCreate
  ExplicitWidth = 684
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 13
  inherited ControlBar1: TControlBar
    Width = 676
    ExplicitWidth = 676
    inherited ToolBar1: TToolBar
      inherited DBNavigator: TDBNavigator
        DataSource = dsReport
        Hints.Strings = ()
      end
    end
  end
  inherited DBGrid: TDBGrid
    Width = 676
    Height = 244
    OnTitleClick = DBGridTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'AviraD'
        Title.Caption = #1514#1488#1512#1497#1498' '#1489#1497#1510#1493#1506
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Shem'
        Title.Caption = #1513#1501' '#1492#1495#1489#1512#1492
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShemD'
        Title.Caption = #1513#1501'  '#1492#1504#1492#1490
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descrpt'
        Title.Caption = #1514#1488#1493#1512' '#1492#1506#1489#1497#1512#1492
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DohNum'
        Title.Caption = #1502#1505#1508#1512' '#1491#1493'"'#1495
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tipul'
        Title.Caption = #1496#1497#1508#1493#1500
        Width = 141
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Top = 282
    Width = 676
    ExplicitTop = 282
    ExplicitWidth = 676
  end
  inherited StatusBar1: TStatusBar
    Top = 314
    Width = 676
    ExplicitTop = 314
    ExplicitWidth = 676
  end
  inherited ActionList: TActionList
    inherited acPrint: TAction
      OnExecute = acPrintExecute
    end
    inherited acExcel: TAction
      OnExecute = acExcelExecute
    end
  end
  inherited dsReport: TDataSource
    DataSet = frmDrAviraFilter.qrFilter
  end
end
