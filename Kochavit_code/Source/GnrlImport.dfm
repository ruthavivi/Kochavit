object dlgGnrlImport: TdlgGnrlImport
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1492#1493#1505#1508#1514' '#1502#1505#1502#1498
  ClientHeight = 437
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object imDisplay: TImage
    Left = 0
    Top = 0
    Width = 359
    Height = 289
    Align = alClient
    Stretch = True
    ExplicitWidth = 360
  end
  object Panel1: TPanel
    Left = 0
    Top = 289
    Width = 359
    Height = 104
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      359
      104)
    object lbFileName: TLabel
      Left = 270
      Top = 16
      Width = 64
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1513#1501' '#1492#1502#1505#1502#1498':'
      ExplicitLeft = 271
    end
    object edDocName: TEdit
      Left = 15
      Top = 16
      Width = 249
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      OnChange = edDocNameChange
    end
    object cbSaveOnFolder: TCheckBox
      Left = 152
      Top = 70
      Width = 183
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1513#1502#1493#1512' '#1489#1514#1497#1511#1497#1492' '#1495#1497#1510#1493#1504#1497#1514
      TabOrder = 1
      OnClick = cbSaveOnFolderClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 393
    Width = 359
    Height = 44
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      359
      44)
    object btnAbort: TBitBtn
      Left = 71
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&'#1489#1497#1496#1493#1500
      Kind = bkAbort
      NumGlyphs = 2
      TabOrder = 0
    end
    object btnOk: TBitBtn
      Left = 189
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&'#1488#1497#1513#1493#1512
      Enabled = False
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end
