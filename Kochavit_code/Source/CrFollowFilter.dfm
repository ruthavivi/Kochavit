inherited frmCrFollowFilter: TfrmCrFollowFilter
  Caption = #1513#1488#1497#1500#1514#1492' '#1500#1502#1488#1490#1512' '#1492#1493#1491#1506#1493#1514
  ClientWidth = 462
  ExplicitWidth = 478
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 462
    ExplicitWidth = 462
    inherited btnExecute: TBitBtn
      OnClick = btnExecuteClick
    end
  end
  inherited Panel2: TPanel
    Width = 462
    ExplicitWidth = 462
    inherited grbMain: TGroupBox
      Width = 460
      ExplicitWidth = 460
      object lbADateDone: TLabel
        Tag = 3
        Left = 331
        Top = 32
        Width = 10
        Height = 13
        Caption = #1502':'
        Enabled = False
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbZDateDone: TLabel
        Tag = 3
        Left = 154
        Top = 32
        Width = 15
        Height = 13
        Caption = #1506#1491':'
        Enabled = False
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbEShem: TLabel
        Tag = 5
        Left = 306
        Top = 59
        Width = 34
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1513#1493#1493#1492' '#1500':'
        Enabled = False
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edAMoed: TMaskEdit
        Tag = 3
        Left = 184
        Top = 32
        Width = 113
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '!99/99/9999;1; '
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = edAMoedExit
      end
      object edZMoed: TMaskEdit
        Tag = 3
        Left = 31
        Top = 32
        Width = 106
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '!99/99/9999;1; '
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        Text = '  /  /    '
      end
      object cbMoed: TCheckBox
        Tag = 3
        Left = 347
        Top = 32
        Width = 94
        Height = 14
        Caption = #1514#1488#1512#1497#1498' '#1492#1493#1491#1506#1492':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cbMoedClick
      end
      object cbEShem: TComboBox
        Tag = 5
        Left = 128
        Top = 59
        Width = 169
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Enabled = False
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Sorted = True
        TabOrder = 4
        OnEnter = cbEShemEnter
      end
      object cbShem: TCheckBox
        Tag = 5
        Left = 344
        Top = 59
        Width = 97
        Height = 16
        Anchors = [akTop, akRight]
        Caption = #1513#1501' '#1492#1495#1489#1512#1492':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = cbMoedClick
      end
    end
  end
end
