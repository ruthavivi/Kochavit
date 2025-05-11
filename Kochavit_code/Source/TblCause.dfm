inherited frmCauseTbl: TfrmCauseTbl
  Left = 240
  Caption = #1496#1489#1500#1514' '#1505#1497#1489#1493#1514' '#1492#1506#1489#1512#1492
  ClientWidth = 325
  OldCreateOrder = True
  ExplicitWidth = 341
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 325
    ExplicitWidth = 325
  end
  inherited StatusBar: TStatusBar
    Width = 325
    ExplicitWidth = 325
  end
  inherited Panel1: TPanel
    Width = 325
    ExplicitWidth = 325
    inherited dbGrid: TCheckDBGrid
      Width = 323
      Columns = <
        item
          Expanded = False
          FieldName = 'CauseCl'
          Visible = True
          ValueChecked = 'T'
          ValueUnchecked = 'F'
        end
        item
          Expanded = False
          FieldName = 'CauseCr'
          Visible = True
          ValueChecked = 'T'
          ValueUnchecked = 'F'
        end
        item
          Expanded = False
          FieldName = 'CauseDr'
          Visible = True
          ValueChecked = 'T'
          ValueUnchecked = 'F'
        end>
    end
  end
  inherited ActionList1: TActionList
    inherited acPrint: TAction
      OnExecute = acPrintExecute
    end
  end
  inherited tbTbl: TEDBTable
    IndexFieldNames = 'CauseCl'
    TableName = 'KTblCause'
    object tbTblId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbTblCauseCl: TStringField
      DisplayLabel = #1505#1497#1489#1493#1514' '#1500#1511#1493#1495
      FieldName = 'CauseCl'
      Size = 15
    end
    object tbTblCauseCr: TStringField
      DisplayLabel = #1505#1497#1489#1493#1514' '#1512#1499#1489
      FieldName = 'CauseCr'
      Size = 15
    end
    object tbTblCauseDr: TStringField
      DisplayLabel = #1505#1497#1489#1493#1514' '#1504#1492#1490
      FieldName = 'CauseDr'
      Size = 15
    end
  end
  object frdbCause: TfrxDBDataset
    UserName = 'frdbCause'
    CloseDataSource = False
    DataSet = tbTbl
    BCDToCurrency = False
    Left = 184
    Top = 80
  end
end
