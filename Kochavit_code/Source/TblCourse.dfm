inherited frmCourseTbl: TfrmCourseTbl
  Left = 224
  Caption = #1496#1489#1500#1514' '#1511#1493#1512#1505#1497#1501
  ClientWidth = 406
  OldCreateOrder = True
  ExplicitWidth = 422
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 406
    ExplicitWidth = 406
  end
  inherited StatusBar: TStatusBar
    Width = 406
    ExplicitWidth = 406
  end
  inherited Panel1: TPanel
    Width = 406
    ExplicitWidth = 406
    inherited dbGrid: TCheckDBGrid
      Width = 404
      Columns = <
        item
          Expanded = False
          FieldName = 'Course'
          Visible = True
          ValueChecked = 'T'
          ValueUnchecked = 'F'
        end
        item
          Expanded = False
          FieldName = 'HourNum'
          Visible = True
          ValueChecked = 'T'
          ValueUnchecked = 'F'
        end
        item
          Expanded = False
          FieldName = 'Teuda'
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
    IndexFieldNames = 'Course'
    TableName = 'KTblCourse'
    object tbTblId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbTblCourse: TStringField
      DisplayLabel = #1513#1501' '#1492#1511#1493#1512#1505
      FieldName = 'Course'
      Size = 25
    end
    object tbTblHourNum: TIntegerField
      DisplayLabel = #1502#1505#39' '#1513#1506#1493#1514
      FieldName = 'HourNum'
    end
    object tbTblTeuda: TStringField
      DisplayLabel = #1514#1506#1493#1491#1492
      FieldName = 'Teuda'
      Size = 25
    end
  end
  object frdbCourse: TfrxDBDataset
    UserName = 'frdbCourse'
    CloseDataSource = False
    DataSet = tbTbl
    BCDToCurrency = False
    Left = 184
    Top = 80
  end
end
