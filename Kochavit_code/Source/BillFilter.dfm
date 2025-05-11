inherited frmBillFilter: TfrmBillFilter
  Top = 197
  Caption = #1513#1488#1497#1500#1514#1492' '#1500#1502#1488#1490#1512' '#1495#1513#1489#1493#1504#1493#1514
  ClientHeight = 259
  ClientWidth = 463
  OldCreateOrder = True
  ExplicitWidth = 479
  ExplicitHeight = 298
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 228
    Width = 463
    ExplicitTop = 211
    ExplicitWidth = 459
    inherited btnExecute: TBitBtn
      OnClick = btnExecuteClick
    end
    inherited cxIncludeArhiv: TCheckBox
      Enabled = False
      Visible = False
    end
  end
  inherited Panel2: TPanel
    Width = 463
    Height = 228
    ExplicitWidth = 459
    ExplicitHeight = 211
    inherited grbMain: TGroupBox
      Width = 461
      Height = 226
      ExplicitWidth = 457
      ExplicitHeight = 209
      object lbAProduceD: TLabel
        Tag = 3
        Left = 315
        Top = 48
        Width = 10
        Height = 13
        Caption = #1502':'
        Enabled = False
      end
      object lbZProduceD: TLabel
        Tag = 3
        Left = 138
        Top = 48
        Width = 15
        Height = 13
        Caption = #1506#1491':'
        Enabled = False
      end
      object lbEShem: TLabel
        Tag = 5
        Left = 290
        Top = 151
        Width = 34
        Height = 13
        Caption = #1513#1493#1493#1492' '#1500':'
        Enabled = False
      end
      object lbAToPayD: TLabel
        Tag = 3
        Left = 315
        Top = 68
        Width = 10
        Height = 13
        Caption = #1502':'
        Enabled = False
      end
      object lbZToPayD: TLabel
        Tag = 3
        Left = 138
        Top = 68
        Width = 15
        Height = 13
        Caption = #1506#1491':'
        Enabled = False
      end
      object lbAPaydD: TLabel
        Tag = 3
        Left = 315
        Top = 88
        Width = 10
        Height = 13
        Caption = #1502':'
        Enabled = False
      end
      object lbZPaydD: TLabel
        Tag = 3
        Left = 138
        Top = 88
        Width = 15
        Height = 13
        Caption = #1506#1491':'
        Enabled = False
      end
      object lbAReciptNo: TLabel
        Tag = 2
        Left = 315
        Top = 27
        Width = 10
        Height = 13
        Caption = #1502':'
        Enabled = False
      end
      object lbZReciptNo: TLabel
        Tag = 2
        Left = 138
        Top = 27
        Width = 15
        Height = 13
        Caption = #1506#1491':'
        Enabled = False
      end
      object lbASumA: TLabel
        Tag = 1
        Left = 314
        Top = 109
        Width = 10
        Height = 13
        Caption = #1502':'
        Enabled = False
      end
      object lbZSumA: TLabel
        Tag = 1
        Left = 137
        Top = 109
        Width = 15
        Height = 13
        Caption = #1506#1491':'
        Enabled = False
      end
      object Label1: TLabel
        Tag = 1
        Left = 164
        Top = 115
        Width = 20
        Height = 13
        Caption = #1513'"'#1495
      end
      object Label2: TLabel
        Left = 12
        Top = 115
        Width = 20
        Height = 13
        Caption = #1513'"'#1495
      end
      object lbEPayd: TLabel
        Tag = 7
        Left = 290
        Top = 130
        Width = 34
        Height = 13
        Caption = #1513#1493#1493#1492' '#1500':'
        Enabled = False
      end
      object lbEOved: TLabel
        Tag = 5
        Left = 290
        Top = 173
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
      object edAProduceD: TMaskEdit
        Tag = 3
        Left = 168
        Top = 48
        Width = 113
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentBiDiMode = False
        TabOrder = 4
        Text = '  /  /    '
        OnExit = edAProduceDExit
      end
      object edZProduceD: TMaskEdit
        Tag = 3
        Left = 15
        Top = 48
        Width = 106
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentBiDiMode = False
        TabOrder = 5
        Text = '  /  /    '
        OnExit = edAProduceDExit
      end
      object cbProduceD: TCheckBox
        Tag = 3
        Left = 339
        Top = 48
        Width = 94
        Height = 14
        Caption = #1514#1488#1512#1497#1498' '#1492#1508#1511#1492':'
        TabOrder = 3
        OnClick = cbReciptNoClick
      end
      object cbShem: TCheckBox
        Tag = 5
        Left = 339
        Top = 151
        Width = 94
        Height = 14
        Caption = #1513#1501' '#1495#1489#1512#1492':'
        TabOrder = 17
        OnClick = cbReciptNoClick
      end
      object cbEShem: TComboBox
        Tag = 5
        Left = 120
        Top = 151
        Width = 161
        Height = 21
        Style = csDropDownList
        Color = clBtnFace
        Enabled = False
        Sorted = True
        TabOrder = 18
        OnEnter = cbEShemEnter
      end
      object edAToPayD: TMaskEdit
        Tag = 3
        Left = 168
        Top = 68
        Width = 113
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentBiDiMode = False
        TabOrder = 7
        Text = '  /  /    '
      end
      object edZToPayD: TMaskEdit
        Tag = 3
        Left = 15
        Top = 68
        Width = 106
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentBiDiMode = False
        TabOrder = 8
        Text = '  /  /    '
        OnExit = edAProduceDExit
      end
      object cbToPayD: TCheckBox
        Tag = 3
        Left = 328
        Top = 68
        Width = 105
        Height = 14
        Caption = #1514#1488#1512#1497#1498' '#1500#1514#1513#1500#1493#1501':'
        TabOrder = 6
        OnClick = cbReciptNoClick
      end
      object edAPaydD: TMaskEdit
        Tag = 3
        Left = 168
        Top = 88
        Width = 113
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentBiDiMode = False
        TabOrder = 10
        Text = '  /  /    '
      end
      object edZPaydD: TMaskEdit
        Tag = 3
        Left = 15
        Top = 88
        Width = 106
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentBiDiMode = False
        TabOrder = 11
        Text = '  /  /    '
        OnExit = edAProduceDExit
      end
      object cbPaydD: TCheckBox
        Tag = 3
        Left = 336
        Top = 88
        Width = 97
        Height = 14
        Caption = #1513#1493#1500#1501' '#1489#1508#1493#1506#1500':'
        TabOrder = 9
        OnClick = cbReciptNoClick
      end
      object cbReciptNo: TCheckBox
        Tag = 2
        Left = 339
        Top = 27
        Width = 94
        Height = 14
        Caption = #1502#1505#39' '#1495#1513#1489#1493#1504#1497#1514':'
        TabOrder = 0
        OnClick = cbReciptNoClick
      end
      object edAReciptNo: TMaskEdit
        Tag = 2
        Left = 168
        Top = 27
        Width = 113
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        ParentBiDiMode = False
        TabOrder = 1
        Text = ''
      end
      object edZReciptNo: TMaskEdit
        Tag = 2
        Left = 15
        Top = 27
        Width = 106
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        ParentBiDiMode = False
        TabOrder = 2
        Text = ''
      end
      object cbSumA: TCheckBox
        Tag = 1
        Left = 338
        Top = 109
        Width = 94
        Height = 14
        Caption = #1505#1499#1493#1501' '#1500#1514#1513#1500#1493#1501':'
        TabOrder = 12
        OnClick = cbReciptNoClick
      end
      object edASumA: TMaskEdit
        Tag = 1
        Left = 185
        Top = 109
        Width = 96
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '999999;1; '
        MaxLength = 6
        ParentBiDiMode = False
        TabOrder = 13
        Text = '      '
      end
      object edZSumA: TMaskEdit
        Tag = 1
        Left = 33
        Top = 109
        Width = 88
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '999999;1; '
        MaxLength = 6
        ParentBiDiMode = False
        TabOrder = 14
        Text = '      '
      end
      object cbPayd: TCheckBox
        Tag = 7
        Left = 339
        Top = 130
        Width = 94
        Height = 14
        Caption = #1513#1493#1500#1501':'
        TabOrder = 15
        OnClick = cbReciptNoClick
      end
      object cbEPayd: TComboBox
        Tag = 7
        Left = 168
        Top = 130
        Width = 113
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Enabled = False
        Sorted = True
        TabOrder = 16
        Items.Strings = (
          #1499#1503
          #1500#1488)
      end
      object cbOved: TCheckBox
        Tag = 5
        Left = 336
        Top = 173
        Width = 97
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1502#1496#1508#1500' '#1488#1495#1512#1488#1497':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        OnClick = cbReciptNoClick
      end
      object cbEOved: TComboBox
        Tag = 5
        Left = 112
        Top = 173
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
        TabOrder = 20
        OnEnter = cbEOvedEnter
      end
    end
  end
  object dsFilter: TDataSource
    Left = 33
    Top = 145
  end
end
