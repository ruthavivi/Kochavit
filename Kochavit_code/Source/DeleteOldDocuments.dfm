object frmDeleteOldDocuments: TfrmDeleteOldDocuments
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1502#1495#1497#1511#1514' '#1502#1505#1502#1499#1497#1501' '#1497#1513#1504#1497#1501
  ClientHeight = 242
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 468
    Height = 201
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object rgOptions: TRadioGroup
      Left = 1
      Top = 1
      Width = 466
      Height = 199
      Align = alClient
      Caption = #1502#1495#1497#1511#1514' '#1499#1500' '#1492#1502#1505#1502#1499#1497#1501' '#1492#1497#1513#1504#1497#1501' '#1506#1491' '#1514#1488#1512#1497#1498' '#1502#1493#1490#1491#1512
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        #1502#1495#1497#1511#1514' '#1502#1505#1502#1499#1497#1501' '#1497#1513#1504#1497#1501' '#1497#1493#1514#1512' '#1502' 7 '#1513#1504#1497#1501
        #1502#1495#1497#1511#1514' '#1502#1505#1502#1499#1497#1501' '#1497#1513#1504#1497#1501' '#1506#1491' '#1514#1488#1512#1497#1498':')
      ParentFont = False
      TabOrder = 0
    end
    object edTillMoed: TMaskEdit
      Left = 192
      Top = 144
      Width = 72
      Height = 21
      BiDiMode = bdLeftToRight
      EditMask = '!99/99/0000;1; '
      MaxLength = 10
      ParentBiDiMode = False
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 201
    Width = 468
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    object btnCancel: TBitBtn
      Left = 128
      Top = 6
      Width = 75
      Height = 25
      Caption = #1489#1497#1496#1493#1500
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnOk: TBitBtn
      Left = 256
      Top = 6
      Width = 75
      Height = 25
      Caption = #1488#1497#1513#1493#1512
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = btnOkClick
    end
  end
  object qrBigFolder: TEDBQuery
    DatabaseName = 'dbnMainBig'
    SessionName = 'Main'
    RequestSensitive = True
    Params = <>
    Left = 48
    Top = 96
  end
end
