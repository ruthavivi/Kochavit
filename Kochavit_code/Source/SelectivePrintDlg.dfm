object dlgSelectivePrint: TdlgSelectivePrint
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1492#1491#1508#1505#1514' '#1499#1512#1496#1497#1505
  ClientHeight = 141
  ClientWidth = 314
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object rgSelect: TRadioGroup
    Left = 0
    Top = 0
    Width = 314
    Height = 100
    Align = alClient
    ItemIndex = 0
    Items.Strings = (
      #1499#1500' '#1492#1504#1514#1493#1504#1497#1501
      #1504#1514#1493#1504#1497#1501' '#1492#1495#1500' '#1502':')
    TabOrder = 0
    OnClick = rgSelectClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 100
    Width = 314
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 176
      Top = 6
      Width = 75
      Height = 25
      Caption = #1488#1497#1513#1493#1512
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 64
      Top = 6
      Width = 75
      Height = 25
      Caption = #1489#1497#1496#1493#1500
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object edDate: TDateTimePicker
    Left = 64
    Top = 65
    Width = 121
    Height = 21
    Date = 43831.748835509260000000
    Time = 43831.748835509260000000
    Enabled = False
    TabOrder = 2
  end
end
