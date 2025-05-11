object frmMailSendListCr: TfrmMailSendListCr
  Left = 0
  Top = 0
  ActiveControl = btnClose
  Anchors = [akTop, akRight]
  BorderStyle = bsDialog
  Caption = #1512#1513#1497#1502#1514' '#1491#1493#1488#1512' '#1497#1493#1510#1488
  ClientHeight = 339
  ClientWidth = 438
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 298
    Width = 438
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 273
    ExplicitWidth = 697
    DesignSize = (
      438
      41)
    object btnClose: TBitBtn
      Left = 188
      Top = 6
      Width = 59
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1505#1490#1493#1512
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 438
    Height = 298
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 697
    ExplicitHeight = 273
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 436
      Height = 296
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      ExplicitWidth = 695
      ExplicitHeight = 271
      object Label3: TLabel
        Left = 1
        Top = 1
        Width = 434
        Height = 17
        Align = alTop
        BiDiMode = bdRightToLeft
        Caption = #1492#1493#1491#1506#1493#1514' '#1502#1499#1512#1496#1497#1505' '#1512#1499#1489
        Color = clActiveCaption
        Font.Charset = HEBREW_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitLeft = 573
        ExplicitWidth = 121
      end
      object DBGrid3: TDBGrid
        Left = 1
        Top = 18
        Width = 434
        Height = 277
        Align = alClient
        BiDiMode = bdRightToLeft
        DataSource = dsEMailsSendCr
        Font.Charset = HEBREW_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = HEBREW_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'Moed'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Subject'
            Visible = True
          end>
      end
    end
  end
  object qrEMailsSendCr: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    DataSource = dmCarEdit.dsCar
    SQL.Strings = (
      'SELECT Es.*'
      'FROM KEmailsSend Es'
      'WHERE CarId = :Id'
      'ORDER BY Moed DESC')
    Params = <
      item
        DataType = ftInteger
        Name = 'Id'
        ParamType = ptInput
        Size = 4
      end>
    Left = 120
    Top = 184
    object qrEMailsSendCrId: TIntegerField
      FieldName = 'Id'
    end
    object qrEMailsSendCrClientId: TIntegerField
      FieldName = 'ClientId'
    end
    object qrEMailsSendCrCarId: TIntegerField
      FieldName = 'CarId'
    end
    object qrEMailsSendCrDriverId: TIntegerField
      FieldName = 'DriverId'
    end
    object qrEMailsSendCrMoed: TDateField
      DisplayLabel = #1504#1513#1500#1495' '#1489#1514#1488#1512#1497#1498
      FieldName = 'Moed'
    end
    object qrEMailsSendCrSubject: TStringField
      DisplayLabel = #1504#1493#1513#1488
      FieldName = 'Subject'
      Size = 35
    end
  end
  object dsEMailsSendCr: TDataSource
    DataSet = qrEMailsSendCr
    Left = 176
    Top = 88
  end
end
