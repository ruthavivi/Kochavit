inherited frmHeiterFilter: TfrmHeiterFilter
  Left = 169
  Top = 236
  Caption = #1513#1488#1497#1500#1514#1492' '#1500#1502#1488#1490#1512' '#1492#1497#1514#1512#1497#1501' '#1493#1488#1497#1513#1493#1512#1497#1501
  ClientHeight = 192
  ClientWidth = 458
  OldCreateOrder = True
  ExplicitWidth = 474
  ExplicitHeight = 231
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 161
    Width = 458
    ExplicitTop = 141
    ExplicitWidth = 458
    inherited btnExecute: TBitBtn
      OnClick = btnExecuteClick
    end
  end
  inherited Panel2: TPanel
    Width = 458
    Height = 161
    ExplicitWidth = 458
    ExplicitHeight = 141
    inherited grbMain: TGroupBox
      Width = 456
      Height = 159
      ExplicitWidth = 456
      ExplicitHeight = 139
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
      object lbEShemD: TLabel
        Tag = 5
        Left = 306
        Top = 52
        Width = 34
        Height = 13
        Caption = #1513#1493#1493#1492' '#1500':'
        Enabled = False
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbEHeiter: TLabel
        Tag = 5
        Left = 306
        Top = 71
        Width = 34
        Height = 13
        Caption = #1513#1493#1493#1492' '#1500':'
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
        Top = 114
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
      object lbEOved: TLabel
        Tag = 5
        Left = 309
        Top = 93
        Width = 34
        Height = 13
        Caption = #1513#1493#1493#1492' '#1500':'
        Enabled = False
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edADateDone: TMaskEdit
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
        OnExit = edADateDoneExit
      end
      object edZDateDone: TMaskEdit
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
        OnExit = edADateDoneExit
      end
      object cbDateDone: TCheckBox
        Tag = 3
        Left = 352
        Top = 32
        Width = 94
        Height = 14
        Caption = #1514#1488#1512#1497#1498' '#1495#1497#1491#1493#1513':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cbDateDoneClick
      end
      object cbShemD: TCheckBox
        Tag = 5
        Left = 367
        Top = 52
        Width = 79
        Height = 14
        Caption = #1513#1501' '#1504#1492#1490':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = cbDateDoneClick
      end
      object cbEShemD: TComboBox
        Tag = 5
        Left = 136
        Top = 52
        Width = 161
        Height = 21
        Style = csDropDownList
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
        OnEnter = cbEShemDEnter
      end
      object cbHeiter: TCheckBox
        Tag = 5
        Left = 367
        Top = 71
        Width = 79
        Height = 14
        Caption = #1513#1501' '#1492#1492#1497#1514#1512':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = cbDateDoneClick
      end
      object cbEHeiter: TComboBox
        Tag = 5
        Left = 136
        Top = 71
        Width = 161
        Height = 21
        Style = csDropDownList
        Color = clBtnFace
        Enabled = False
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Sorted = True
        TabOrder = 6
        OnEnter = cbEHeiterEnter
      end
      object cbEShem: TComboBox
        Tag = 5
        Left = 136
        Top = 114
        Width = 161
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
        TabOrder = 8
        OnEnter = cbEShemEnter
      end
      object cbShem: TCheckBox
        Tag = 5
        Left = 352
        Top = 114
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
        TabOrder = 7
        OnClick = cbDateDoneClick
      end
      object cbOved: TCheckBox
        Tag = 5
        Left = 352
        Top = 93
        Width = 94
        Height = 14
        Caption = #1502#1496#1508#1500' '#1488#1495#1512#1488#1497':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = cbDateDoneClick
      end
      object cbEOved: TComboBox
        Tag = 5
        Left = 136
        Top = 93
        Width = 161
        Height = 21
        Style = csDropDownList
        Color = clBtnFace
        Enabled = False
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Sorted = True
        TabOrder = 10
        OnEnter = cbEOvedEnter
      end
    end
  end
end
