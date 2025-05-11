inherited frmCargoTbl: TfrmCargoTbl
  Caption = #1496#1489#1500#1514' '#1505#1493#1490#1497' '#1502#1496#1506#1503
  OldCreateOrder = True
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited dbGrid: TCheckDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'Cargo'
          Width = 156
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
    IndexFieldNames = 'Cargo'
    TableName = 'KTblCargo'
    object tbTblCargo: TStringField
      DisplayLabel = #1505#1493#1490' '#1502#1496#1506#1503
      FieldName = 'Cargo'
    end
    object tbTblID: TAutoIncField
      FieldName = 'ID'
    end
  end
  object frdbCargo: TfrxDBDataset
    UserName = 'frdbCargo'
    CloseDataSource = False
    DataSet = tbTbl
    BCDToCurrency = False
    Left = 184
    Top = 80
  end
end
