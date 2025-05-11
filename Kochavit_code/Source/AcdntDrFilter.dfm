inherited frmAcdntDrFilter: TfrmAcdntDrFilter
  Caption = #1513#1488#1497#1500#1514#1492' '#1514#1488#1493#1504#1493#1514' '#1504#1492#1490#1497#1501
  ClientHeight = 185
  OldCreateOrder = True
  ExplicitHeight = 224
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 154
    ExplicitTop = 154
    inherited btnExecute: TBitBtn
      OnClick = btnExecuteClick
    end
  end
  inherited Panel2: TPanel
    Height = 154
    ExplicitHeight = 154
    inherited grbMain: TGroupBox
      Height = 152
      Caption = #1489#1504#1497#1514' '#1513#1488#1497#1500#1514#1492' '#1514#1488#1493#1504#1493#1514' '#1504#1492#1490#1497#1501
      ExplicitHeight = 152
      object lbAAcdntD: TLabel
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
      object lbZAcdntZ: TLabel
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
      object lbEWithInjr: TLabel
        Tag = 5
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
      object lbEShem: TLabel
        Tag = 5
        Left = 298
        Top = 98
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
      object lbEQuilty: TLabel
        Tag = 5
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
      object edAAcdntD: TMaskEdit
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
        OnExit = edAAcdntDExit
      end
      object edZAcdntD: TMaskEdit
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
        OnExit = edAAcdntDExit
      end
      object cbAcdntD: TCheckBox
        Tag = 3
        Left = 339
        Top = 32
        Width = 94
        Height = 14
        Caption = #1514#1488#1512#1497#1498' '#1496#1497#1508#1493#1500':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cbAcdntDClick
      end
      object cbWithInjr: TCheckBox
        Tag = 5
        Left = 339
        Top = 54
        Width = 94
        Height = 14
        Caption = #1506#1501' '#1504#1508#1490#1506#1497#1501':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = cbAcdntDClick
      end
      object cbEWithInjr: TComboBox
        Tag = 5
        Left = 128
        Top = 54
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
        Items.Strings = (
          #1499#1503
          #1500#1488)
      end
      object cbShem: TCheckBox
        Tag = 5
        Left = 339
        Top = 98
        Width = 94
        Height = 14
        Caption = #1513#1501' '#1495#1489#1512#1492':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = cbAcdntDClick
      end
      object cbEShem: TComboBox
        Tag = 5
        Left = 128
        Top = 98
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
        TabOrder = 8
        OnEnter = cbEShemEnter
      end
      object cbQuilty: TCheckBox
        Tag = 5
        Left = 339
        Top = 76
        Width = 94
        Height = 14
        Caption = #1504#1492#1490' '#1488#1513#1501':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = cbAcdntDClick
      end
      object cbEQuilty: TComboBox
        Tag = 5
        Left = 128
        Top = 76
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
        Items.Strings = (
          #1499#1503
          #1500#1488)
      end
    end
  end
end
