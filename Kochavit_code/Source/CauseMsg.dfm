object frmCauseMsg: TfrmCauseMsg
  Left = 279
  Top = 251
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1502#1493#1506#1491' '#1493#1505#1497#1489#1514' '#1492#1506#1489#1512#1492
  ClientHeight = 133
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 103
    Width = 286
    Height = 30
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object btnClose: TBitBtn
      Left = 96
      Top = 3
      Width = 75
      Height = 25
      Caption = '&'#1505#1490#1493#1512
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 286
    Height = 103
    Align = alClient
    TabOrder = 1
    object lbMoed: TStaticText
      Left = 40
      Top = 24
      Width = 209
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkFlat
      BorderStyle = sbsSunken
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object lbSiba: TStaticText
      Left = 40
      Top = 56
      Width = 209
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkFlat
      BorderStyle = sbsSunken
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
end
