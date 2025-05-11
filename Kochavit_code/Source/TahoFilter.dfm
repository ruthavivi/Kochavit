inherited frmTahoFilter: TfrmTahoFilter
  Caption = #1513#1488#1497#1500#1514#1492' '#1500#1502#1488#1490#1512' '#1496#1499#1493#1490#1512#1507
  ClientHeight = 234
  OldCreateOrder = True
  ExplicitHeight = 273
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 203
    ExplicitTop = 203
    inherited btnExecute: TBitBtn
      OnClick = btnExecuteClick
    end
  end
  inherited Panel2: TPanel
    Height = 203
    ExplicitHeight = 203
    inherited grbMain: TGroupBox
      Height = 201
      Caption = #1489#1504#1497#1514' '#1513#1488#1497#1500#1514#1492' '#1500#1502#1488#1490#1512' '#1496#1499#1493#1490#1512#1507
      ExplicitHeight = 201
      object lbAMoed: TLabel
        Tag = 3
        Left = 323
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
      object lbZMoed: TLabel
        Tag = 3
        Left = 146
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
        Left = 298
        Top = 140
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
        Left = 298
        Top = 162
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
      object lbENumber: TLabel
        Tag = 5
        Left = 298
        Top = 118
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
      object Label1: TLabel
        Tag = 7
        Left = 298
        Top = 54
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
      object Label2: TLabel
        Tag = 7
        Left = 298
        Top = 76
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
      object Label3: TLabel
        Tag = 7
        Left = 298
        Top = 97
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
      object edAMoed: TMaskEdit
        Tag = 3
        Left = 176
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
        Left = 23
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
        OnExit = edAMoedExit
      end
      object cbMoed: TCheckBox
        Tag = 3
        Left = 339
        Top = 32
        Width = 94
        Height = 14
        Caption = #1514#1488#1512#1497#1498' '#1504#1505#1497#1506#1492':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cbMoedClick
      end
      object cbShemD: TCheckBox
        Tag = 5
        Left = 354
        Top = 140
        Width = 79
        Height = 14
        Caption = #1513#1501' '#1504#1492#1490':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = cbMoedClick
      end
      object cbEShemD: TComboBox
        Tag = 5
        Left = 128
        Top = 140
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
        TabOrder = 12
        OnEnter = cbEShemDEnter
      end
      object cbShem: TCheckBox
        Tag = 5
        Left = 339
        Top = 162
        Width = 94
        Height = 14
        Caption = #1513#1501' '#1495#1489#1512#1492':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = cbMoedClick
      end
      object cbEShem: TComboBox
        Tag = 5
        Left = 128
        Top = 162
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
        TabOrder = 14
        OnEnter = cbEShemEnter
      end
      object cbNumber: TCheckBox
        Tag = 5
        Left = 354
        Top = 118
        Width = 79
        Height = 14
        Caption = #1502#1505#1508#1512' '#1512#1499#1489':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = cbMoedClick
      end
      object cbENumber: TComboBox
        Tag = 5
        Left = 176
        Top = 118
        Width = 113
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
        OnEnter = cbENumberEnter
      end
      object cbSpeed: TCheckBox
        Tag = 7
        Left = 335
        Top = 54
        Width = 98
        Height = 14
        Caption = #1495#1512#1497#1490#1492' '#1489#1502#1492#1497#1512#1493#1514':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = cbMoedClick
      end
      object cbESpeed: TComboBox
        Tag = 7
        Left = 176
        Top = 54
        Width = 113
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
        Items.Strings = (
          #1499#1503
          #1500#1488)
      end
      object cbZman: TCheckBox
        Tag = 7
        Left = 335
        Top = 76
        Width = 98
        Height = 14
        Caption = #1495#1512#1497#1490#1492' '#1489#1494#1502#1503':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = cbMoedClick
      end
      object cbEZman: TComboBox
        Tag = 7
        Left = 176
        Top = 76
        Width = 113
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
        Items.Strings = (
          #1499#1503
          #1500#1488)
      end
      object cbHarig: TCheckBox
        Tag = 7
        Left = 335
        Top = 97
        Width = 98
        Height = 14
        Caption = #1495#1512#1497#1490#1492' '#1488#1495#1512#1514':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = cbMoedClick
      end
      object cbEHarig: TComboBox
        Tag = 7
        Left = 176
        Top = 97
        Width = 113
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
        TabOrder = 8
        Items.Strings = (
          #1499#1503
          #1500#1488)
      end
    end
  end
end
