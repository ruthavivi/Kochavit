inherited frmAviraFilter: TfrmAviraFilter
  Caption = #1513#1488#1497#1500#1514#1492' '#1506#1489#1497#1512#1493#1514' '#1493#1491#1493#1495#1493#1514
  ClientHeight = 148
  OldCreateOrder = True
  ExplicitHeight = 187
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 117
    ExplicitTop = 117
    inherited btnExecute: TBitBtn
      OnClick = btnExecuteClick
    end
  end
  inherited Panel2: TPanel
    Height = 117
    ExplicitHeight = 117
    inherited grbMain: TGroupBox
      Height = 115
      Caption = #1489#1504#1497#1514' '#1513#1488#1497#1500#1514#1492' '#1500#1502#1488#1490#1512' '#1506#1489#1497#1512#1493#1514' '#1493#1491#1493#1495#1493#1514
      ExplicitHeight = 115
      object lbAAviraD: TLabel
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
      object lbZAviraZ: TLabel
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
      object lbEShem: TLabel
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
      object edAAviraD: TMaskEdit
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
        OnExit = edAAviraDExit
      end
      object edZAviraD: TMaskEdit
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
        OnExit = edAAviraDExit
      end
      object cbAviraD: TCheckBox
        Tag = 3
        Left = 339
        Top = 32
        Width = 94
        Height = 14
        Caption = #1514#1488#1512#1497#1498' '#1489#1497#1510#1493#1506':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cbAviraDClick
      end
      object cbShem: TCheckBox
        Tag = 5
        Left = 339
        Top = 54
        Width = 94
        Height = 14
        Caption = #1513#1501' '#1495#1489#1512#1492':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = cbAviraDClick
      end
      object cbEShem: TComboBox
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
        OnEnter = cbEShemEnter
      end
    end
  end
end
