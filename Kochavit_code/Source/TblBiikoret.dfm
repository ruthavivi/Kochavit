inherited frmGnrlTbl2: TfrmGnrlTbl2
  Left = 427
  Top = 88
  Width = 283
  Height = 357
  Caption = #1496#1489#1500#1514' '#1489#1497#1511#1493#1512#1493#1514' '#1511#1489#1493#1506#1493#1514
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 275
  end
  inherited StatusBar: TStatusBar
    Top = 304
    Width = 275
  end
  inherited Panel1: TPanel
    Width = 275
    Height = 272
    inherited dbGrid: TDBGrid
      Width = 273
      Height = 120
      Align = alTop
      Columns = <
        item
          Expanded = False
          FieldName = 'Bikoret'
          Visible = True
        end>
    end
    object ToolBar2: TToolBar
      Left = 1
      Top = 121
      Width = 273
      Height = 27
      AutoSize = True
      ButtonHeight = 25
      ButtonWidth = 25
      Caption = 'ToolBar1'
      Flat = True
      Images = ImageList1
      TabOrder = 1
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 60
        Height = 25
        Cursor = crHandPoint
        VisibleButtons = [nbFirst, nbLast]
        Flat = True
        Hints.Strings = (
          #1492#1514#1495#1500#1492
          #1505#1493#1507)
        TabOrder = 0
      end
      object ToolButton1: TToolButton
        Left = 60
        Top = 0
        Cursor = crHandPoint
        Action = acAppendScnd
      end
      object ToolButton2: TToolButton
        Left = 85
        Top = 0
        Cursor = crHandPoint
        Action = acDeleteScnd
      end
    end
    object dbGridScnd: TDBGrid
      Left = 1
      Top = 148
      Width = 273
      Height = 123
      Align = alClient
      DataSource = dsTblScnd
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'BikoretDtl'
          Visible = True
        end>
    end
  end
  inherited ImageList1: TImageList
    Top = 104
  end
  inherited dsTbl: TDataSource
    Top = 104
  end
  inherited tbTbl: TTable
    IndexFieldNames = 'Bikoret'
    TableName = 'KTblBikoret'
    Top = 104
    object tbTblID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tbTblBikoret: TStringField
      DisplayLabel = #1505#1506#1497#1507' '#1512#1488#1513#1497
      FieldName = 'Bikoret'
      Size = 30
    end
  end
  inherited ActionList1: TActionList
    Top = 104
    object acAppendScnd: TAction
      Caption = #1492#1493#1505#1508#1514' '#1508#1512#1493#1496
      Hint = #1492#1493#1505#1508#1514' '#1508#1512#1493#1496' '#1500#1505#1506#1497#1507' '#1489#1497#1511#1493#1512#1514
      ImageIndex = 0
    end
    object acDeleteScnd: TAction
      Caption = #1489#1497#1496#1493#1500' '#1508'&'#1512#1493#1496
      Hint = #1489#1497#1496#1493#1500' '#1505#1506#1497#1507
      ImageIndex = 1
    end
  end
  inherited tmpTbl: TTable
    Left = 144
    Top = 136
  end
  object dsTblScnd: TDataSource
    DataSet = tbTblScnd
    Left = 80
    Top = 192
  end
  object tbTblScnd: TTable
    DatabaseName = 'Kb'
    IndexName = 'xIdBikoret'
    MasterFields = 'ID'
    MasterSource = dsTbl
    TableName = 'KTblBikoretDtl'
    Left = 120
    Top = 192
    object tbTblScndID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tbTblScndIdBikoret: TIntegerField
      FieldName = 'IdBikoret'
    end
    object tbTblScndBikoretDtl: TStringField
      DisplayLabel = #1505#1506#1497#1508#1497#1501' '#1502#1497#1513#1504#1497#1497#1501
      FieldName = 'BikoretDtl'
      Size = 40
    end
  end
end
