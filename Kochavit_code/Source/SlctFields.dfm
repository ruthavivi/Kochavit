object frmSlctFields: TfrmSlctFields
  Left = 216
  Top = 182
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1489#1495#1497#1512#1514' '#1513#1491#1493#1514
  ClientHeight = 285
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 360
    Height = 25
    Align = alTop
    TabOrder = 0
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 358
      Height = 23
      Align = alClient
      Alignment = taCenter
      BiDiMode = bdLeftToRight
      BorderStyle = sbsSunken
      Caption = #1492#1506#1489#1512' '#1513#1491#1493#1514' '#1513#1488#1497#1504#1498' '#1502#1506#1493#1504#1497#1503' '#1489#1492#1501' '#1500#1495#1500#1493#1503' '#1492#1513#1502#1488#1500#1497
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 244
    Width = 360
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    object btnClose: TBitBtn
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = #1505#1490#1493#1512
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
    object btnOk: TBitBtn
      Left = 184
      Top = 8
      Width = 75
      Height = 25
      Caption = #1488#1497#1513#1493#1512
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btnOkClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 25
    Width = 360
    Height = 219
    Align = alClient
    TabOrder = 2
    DesignSize = (
      360
      219)
    object Label1: TLabel
      Left = 232
      Top = 8
      Width = 120
      Height = 13
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1513#1491#1493#1514' '#1492#1506#1489#1512#1492' '#1500#1488#1511#1505#1500
    end
    object Label2: TLabel
      Left = 40
      Top = 8
      Width = 120
      Height = 13
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1500#1488' '#1500#1492#1506#1489#1497#1512
    end
    object btnUnSelect: TSpeedButton
      Left = 168
      Top = 56
      Width = 28
      Height = 28
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333333333333333333333333333FF333333333333
        3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
        E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
        E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
        E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
        000033333373FF77777733333330003333333333333777333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = btnUnSelectClick
    end
    object btnSelect: TSpeedButton
      Left = 168
      Top = 104
      Width = 28
      Height = 28
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = btnSelectClick
    end
    object lbSelect: TListBox
      Left = 200
      Top = 24
      Width = 153
      Height = 177
      Anchors = [akTop, akRight]
      ItemHeight = 13
      MultiSelect = True
      TabOrder = 0
    end
    object lbUnSelect: TListBox
      Left = 8
      Top = 24
      Width = 153
      Height = 177
      Anchors = [akTop, akRight]
      ItemHeight = 13
      MultiSelect = True
      TabOrder = 1
    end
  end
end
