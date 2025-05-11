object frmMailSendListDr: TfrmMailSendListDr
  Left = 0
  Top = 0
  ActiveControl = btnClose
  Anchors = [akTop, akRight]
  BorderStyle = bsDialog
  Caption = #1512#1513#1497#1502#1514' '#1491#1493#1488#1512' '#1497#1493#1510#1488
  ClientHeight = 314
  ClientWidth = 473
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
    Top = 273
    Width = 473
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 697
    DesignSize = (
      473
      41)
    object btnClose: TBitBtn
      Left = 192
      Top = 6
      Width = 90
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
    Width = 473
    Height = 273
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 697
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 471
      Height = 271
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      ExplicitWidth = 695
      object Label3: TLabel
        Left = 1
        Top = 1
        Width = 469
        Height = 17
        Align = alTop
        BiDiMode = bdRightToLeft
        Caption = #1492#1493#1491#1506#1493#1514' '#1502#1499#1512#1496#1497#1505' '#1504#1492#1490
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
        ExplicitLeft = 575
        ExplicitWidth = 119
      end
      object DBGrid3: TDBGrid
        Left = 1
        Top = 18
        Width = 469
        Height = 252
        Align = alClient
        BiDiMode = bdRightToLeft
        DataSource = dsEMailsSendDs
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
  object qrEMailsSendDr: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    DataSource = dmDriverEdit.dsDriver
    SQL.Strings = (
      'SELECT Es.*'
      'FROM KEmailsSend Es'
      'WHERE DriverId = :Id'
      'ORDER BY Moed DESC')
    Params = <
      item
        DataType = ftInteger
        Name = 'Id'
        ParamType = ptInput
        Size = 4
      end>
    Left = 112
    Top = 112
    object qrEMailsSendDrId: TIntegerField
      FieldName = 'Id'
    end
    object qrEMailsSendDrClientId: TIntegerField
      FieldName = 'ClientId'
    end
    object qrEMailsSendDrCarId: TIntegerField
      FieldName = 'CarId'
    end
    object qrEMailsSendDrDriverId: TIntegerField
      FieldName = 'DriverId'
    end
    object qrEMailsSendDrMoed: TDateField
      DisplayLabel = #1504#1513#1500#1495' '#1489#1514#1488#1512#1497#1498
      FieldName = 'Moed'
    end
    object qrEMailsSendDrSubject: TStringField
      DisplayLabel = #1504#1493#1513#1488
      FieldName = 'Subject'
      Size = 35
    end
  end
  object dsEMailsSendDs: TDataSource
    DataSet = qrEMailsSendDr
    Left = 176
    Top = 88
  end
end
