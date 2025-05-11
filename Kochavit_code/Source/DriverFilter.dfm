inherited frmDriverFilter: TfrmDriverFilter
  Top = 257
  Caption = #1513#1488#1497#1500#1514#1514' '#1504#1492#1490#1497#1501
  ClientHeight = 237
  ClientWidth = 444
  OldCreateOrder = True
  ExplicitWidth = 460
  ExplicitHeight = 276
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 206
    Width = 444
    ExplicitTop = 178
    inherited btnExecute: TBitBtn
      OnClick = btnExecuteClick
    end
  end
  inherited Panel2: TPanel
    Width = 444
    Height = 206
    ExplicitHeight = 178
    inherited grbMain: TGroupBox
      Width = 442
      Height = 204
      Caption = #1489#1504#1497#1514' '#1513#1488#1497#1500#1514#1492' '#1500#1502#1488#1490#1512' '#1504#1492#1490#1497#1501
      ExplicitHeight = 176
      object lbACodDrv: TLabel
        Tag = 1
        Left = 315
        Top = 27
        Width = 10
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1502':'
        Enabled = False
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbZCodDrv: TLabel
        Tag = 1
        Left = 138
        Top = 27
        Width = 15
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1506#1491':'
        Enabled = False
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbLIsuvD: TLabel
        Tag = 5
        Left = 290
        Top = 48
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
      object lbABorn: TLabel
        Tag = 3
        Left = 315
        Top = 69
        Width = 10
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1502':'
        Enabled = False
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbZBorn: TLabel
        Tag = 3
        Left = 138
        Top = 69
        Width = 15
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1506#1491':'
        Enabled = False
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbEType: TLabel
        Tag = 5
        Left = 291
        Top = 90
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
        ExplicitLeft = 290
      end
      object lbEOved: TLabel
        Tag = 5
        Left = 291
        Top = 132
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
      object lbEShem: TLabel
        Tag = 5
        Left = 291
        Top = 154
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
      object lbEFreze: TLabel
        Tag = 7
        Left = 290
        Top = 111
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
      object cbCodDrv: TCheckBox
        Tag = 1
        Left = 339
        Top = 27
        Width = 94
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1502#1505#39' '#1505#1497#1491#1493#1512#1497':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cbCodDrvClick
      end
      object edACodDrv: TMaskEdit
        Tag = 1
        Left = 168
        Top = 27
        Width = 113
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '999999999;1; '
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 9
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        Text = '         '
      end
      object edZCodDrv: TMaskEdit
        Tag = 1
        Left = 15
        Top = 27
        Width = 106
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '999999999;1; '
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 9
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        Text = '         '
      end
      object cbIsuvD: TCheckBox
        Tag = 5
        Left = 339
        Top = 48
        Width = 94
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1513#1501' '#1492#1497#1513#1493#1489':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = cbCodDrvClick
      end
      object cbEIsuvD: TEdit
        Tag = 5
        Left = 168
        Top = 48
        Width = 113
        Height = 21
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Enabled = False
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object edABorn: TMaskEdit
        Tag = 3
        Left = 168
        Top = 69
        Width = 113
        Height = 21
        Anchors = [akTop, akRight]
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
        TabOrder = 6
        Text = '  /  /    '
        OnExit = edABornExit
      end
      object edZBorn: TMaskEdit
        Tag = 3
        Left = 15
        Top = 69
        Width = 106
        Height = 21
        Anchors = [akTop, akRight]
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
        TabOrder = 7
        Text = '  /  /    '
      end
      object cbBorn: TCheckBox
        Tag = 3
        Left = 328
        Top = 69
        Width = 105
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1514#1488#1512#1497#1498' '#1500#1497#1491#1492':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = cbCodDrvClick
      end
      object cbLicence: TCheckBox
        Tag = 5
        Left = 355
        Top = 90
        Width = 79
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1505#1493#1490' '#1512#1513#1497#1493#1503':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = cbCodDrvClick
        ExplicitLeft = 354
      end
      object cbELicence: TComboBox
        Tag = 5
        Left = 169
        Top = 90
        Width = 113
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
        TabOrder = 9
        OnEnter = cbELicenceEnter
        ExplicitLeft = 168
      end
      object cbOved: TCheckBox
        Tag = 5
        Left = 337
        Top = 132
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
        TabOrder = 12
        OnClick = cbCodDrvClick
      end
      object cbEOved: TComboBox
        Tag = 5
        Left = 113
        Top = 132
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
        TabOrder = 13
        OnEnter = cbELicenceEnter
      end
      object cbEShem: TComboBox
        Tag = 5
        Left = 113
        Top = 154
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
        TabOrder = 15
        OnEnter = cbEShemEnter
      end
      object cbShem: TCheckBox
        Tag = 5
        Left = 337
        Top = 154
        Width = 97
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1513#1501' '#1492#1495#1489#1512#1492':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnClick = cbCodDrvClick
      end
      object cbEFreze: TComboBox
        Tag = 7
        Left = 168
        Top = 111
        Width = 113
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
        TabOrder = 11
        Items.Strings = (
          #1499#1503
          #1500#1488)
      end
      object cbFreze: TCheckBox
        Tag = 7
        Left = 354
        Top = 111
        Width = 79
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1502#1493#1511#1508#1488
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = cbCodDrvClick
      end
    end
  end
end
