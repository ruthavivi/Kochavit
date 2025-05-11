inherited frmCarFilter: TfrmCarFilter
  Left = 213
  Top = 138
  Caption = #1513#1488#1497#1500#1514#1514' '#1512#1499#1489#1497#1501
  ClientHeight = 374
  ClientWidth = 456
  OldCreateOrder = True
  ScreenSnap = True
  SnapBuffer = 50
  ExplicitWidth = 472
  ExplicitHeight = 413
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 343
    Width = 456
    ExplicitTop = 318
    ExplicitWidth = 450
    inherited btnExecute: TBitBtn
      OnClick = btnExecuteClick
    end
  end
  inherited Panel2: TPanel
    Width = 456
    Height = 343
    ExplicitWidth = 450
    ExplicitHeight = 318
    inherited grbMain: TGroupBox
      Width = 454
      Height = 341
      Caption = #1489#1504#1497#1514' '#1513#1488#1497#1500#1514#1492' '#1500#1502#1488#1490#1512' '#1512#1499#1489#1497#1501
      ExplicitWidth = 448
      ExplicitHeight = 316
      DesignSize = (
        454
        341)
      object lbAIdCar: TLabel
        Tag = 1
        Left = 328
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
        ExplicitLeft = 315
      end
      object lbZIdCar: TLabel
        Tag = 1
        Left = 151
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
        ExplicitLeft = 145
      end
      object lbEType: TLabel
        Tag = 5
        Left = 303
        Top = 71
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
        ExplicitLeft = 297
      end
      object lbEProducer: TLabel
        Tag = 5
        Left = 303
        Top = 92
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
        ExplicitLeft = 297
      end
      object lbEDgam: TLabel
        Tag = 5
        Left = 303
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
        ExplicitLeft = 297
      end
      object lbAModel: TLabel
        Tag = 1
        Left = 328
        Top = 157
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
        ExplicitLeft = 322
      end
      object lbZModel: TLabel
        Tag = 1
        Left = 151
        Top = 157
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
        ExplicitLeft = 145
      end
      object lbECargo: TLabel
        Tag = 5
        Left = 303
        Top = 179
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
        ExplicitLeft = 297
      end
      object lbAWeightT: TLabel
        Tag = 1
        Left = 328
        Top = 201
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
        ExplicitLeft = 322
      end
      object lbZWeightT: TLabel
        Tag = 1
        Left = 151
        Top = 201
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
        ExplicitLeft = 145
      end
      object lbEOved: TLabel
        Tag = 5
        Left = 303
        Top = 245
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
      object lbEEngine: TLabel
        Tag = 5
        Left = 303
        Top = 135
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
        ExplicitLeft = 297
      end
      object lbAOpenDate: TLabel
        Tag = 3
        Left = 328
        Top = 49
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
        ExplicitLeft = 322
      end
      object lbZOpenDate: TLabel
        Tag = 3
        Left = 151
        Top = 49
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
        ExplicitLeft = 145
      end
      object lbEShem: TLabel
        Tag = 5
        Left = 303
        Top = 267
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
      object lbEAtar: TLabel
        Tag = 5
        Left = 303
        Top = 289
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
        Left = 303
        Top = 223
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
      object cbCodCar: TCheckBox
        Tag = 1
        Left = 352
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
        OnClick = cbCodCarClick
        ExplicitLeft = 346
      end
      object edACodCar: TMaskEdit
        Tag = 1
        Left = 181
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
        ExplicitLeft = 175
      end
      object edZCodCar: TMaskEdit
        Tag = 1
        Left = 28
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
        ExplicitLeft = 22
      end
      object cbType: TCheckBox
        Tag = 5
        Left = 367
        Top = 71
        Width = 79
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1505#1493#1490' '#1512#1499#1489':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = cbCodCarClick
        ExplicitLeft = 361
      end
      object cbEType: TComboBox
        Tag = 5
        Left = 181
        Top = 71
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
        TabOrder = 7
        OnEnter = cbETypeEnter
        ExplicitLeft = 175
      end
      object cbProducer: TCheckBox
        Tag = 5
        Left = 367
        Top = 92
        Width = 79
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1497#1510#1512#1503':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = cbCodCarClick
        ExplicitLeft = 361
      end
      object cbEProducer: TComboBox
        Tag = 5
        Left = 181
        Top = 92
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
        OnEnter = cbETypeEnter
        ExplicitLeft = 175
      end
      object cbDgam: TCheckBox
        Tag = 5
        Left = 367
        Top = 114
        Width = 79
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1491#1490#1501':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = cbCodCarClick
        ExplicitLeft = 361
      end
      object cbEDgam: TComboBox
        Tag = 5
        Left = 181
        Top = 114
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
        OnEnter = cbEDgamEnter
        ExplicitLeft = 175
      end
      object cbModel: TCheckBox
        Tag = 1
        Left = 352
        Top = 157
        Width = 94
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1513#1504#1514' '#1502#1493#1491#1500':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnClick = cbCodCarClick
        ExplicitLeft = 346
      end
      object edAModel: TMaskEdit
        Tag = 1
        Left = 181
        Top = 157
        Width = 113
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '9999;1; '
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 4
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 15
        Text = '    '
        ExplicitLeft = 175
      end
      object edZModel: TMaskEdit
        Tag = 1
        Left = 28
        Top = 157
        Width = 102
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '9999;1; '
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 4
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 16
        Text = '    '
        ExplicitLeft = 22
      end
      object cbCargo: TCheckBox
        Tag = 5
        Left = 367
        Top = 179
        Width = 79
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1505#1493#1490' '#1502#1496#1506#1503':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnClick = cbCodCarClick
        ExplicitLeft = 361
      end
      object cbECargo: TComboBox
        Tag = 5
        Left = 181
        Top = 179
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
        TabOrder = 18
        OnEnter = cbETypeEnter
        ExplicitLeft = 175
      end
      object cbWeightT: TCheckBox
        Tag = 1
        Left = 352
        Top = 201
        Width = 94
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1502#1513#1511#1500' '#1499#1493#1500#1500':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        OnClick = cbCodCarClick
        ExplicitLeft = 346
      end
      object edAWeightT: TMaskEdit
        Tag = 1
        Left = 181
        Top = 201
        Width = 113
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '99999999;1; '
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 8
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 20
        Text = '        '
        ExplicitLeft = 175
      end
      object edZWeightT: TMaskEdit
        Tag = 1
        Left = 28
        Top = 201
        Width = 102
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Enabled = False
        EditMask = '99999999;1; '
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 8
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 21
        Text = '        '
        ExplicitLeft = 22
      end
      object cbOved: TCheckBox
        Tag = 5
        Left = 349
        Top = 245
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
        TabOrder = 24
        OnClick = cbCodCarClick
      end
      object cbEOved: TComboBox
        Tag = 5
        Left = 125
        Top = 245
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
        TabOrder = 25
        OnEnter = cbETypeEnter
      end
      object cbEngine: TCheckBox
        Tag = 5
        Left = 367
        Top = 135
        Width = 79
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1502#1502#1493#1504#1506':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = cbCodCarClick
        ExplicitLeft = 361
      end
      object cbEEngine: TComboBox
        Tag = 5
        Left = 181
        Top = 135
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
        TabOrder = 13
        Items.Strings = (
          #1499#1503
          #1500#1488)
        ExplicitLeft = 175
      end
      object edADateReg: TMaskEdit
        Tag = 3
        Left = 181
        Top = 49
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
        TabOrder = 4
        Text = '  /  /    '
        ExplicitLeft = 175
      end
      object edZDateReg: TMaskEdit
        Tag = 3
        Left = 28
        Top = 49
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
        TabOrder = 5
        Text = '  /  /    '
        ExplicitLeft = 22
      end
      object cbDateReg: TCheckBox
        Tag = 3
        Left = 341
        Top = 49
        Width = 105
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1502#1493#1506#1491' '#1512#1497#1513#1493#1501':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = cbCodCarClick
        ExplicitLeft = 335
      end
      object cbEShem: TComboBox
        Tag = 5
        Left = 125
        Top = 267
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
        TabOrder = 27
        OnEnter = cbEShemEnter
      end
      object cbShem: TCheckBox
        Tag = 5
        Left = 349
        Top = 267
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
        TabOrder = 26
        OnClick = cbCodCarClick
      end
      object cbAtar: TCheckBox
        Tag = 5
        Left = 367
        Top = 289
        Width = 79
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1488#1514#1512' '#1489#1497#1511#1493#1512#1514':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 28
        OnClick = cbCodCarClick
      end
      object cbEAtar: TComboBox
        Tag = 5
        Left = 181
        Top = 289
        Width = 113
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        Enabled = False
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        Sorted = True
        TabOrder = 29
        OnEnter = cbETypeEnter
      end
      object cbEFreze: TComboBox
        Tag = 7
        Left = 181
        Top = 223
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
        TabOrder = 22
        Items.Strings = (
          #1499#1503
          #1500#1488)
      end
      object cbFreze: TCheckBox
        Tag = 7
        Left = 367
        Top = 223
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
        TabOrder = 23
        OnClick = cbCodCarClick
      end
    end
  end
end
