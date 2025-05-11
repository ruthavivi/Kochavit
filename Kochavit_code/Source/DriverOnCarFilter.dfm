inherited frmDriverOnCarFilter: TfrmDriverOnCarFilter
  Caption = #1513#1488#1497#1500#1514#1492' '#1500#1502#1488#1490#1512' '#1504#1492#1490#1497#1501' '#1510#1502#1493#1491#1497#1501
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnExecute: TBitBtn
      OnClick = btnExecuteClick
    end
  end
  inherited Panel2: TPanel
    inherited grbMain: TGroupBox
      Caption = #1489#1504#1497#1514' '#1513#1488#1497#1500#1514#1492' '#1500#1502#1488#1490#1512' '#1504#1492#1490#1497#1501' '#1510#1502#1493#1491#1497#1501
      object lbEShemD: TLabel
        Tag = 5
        Left = 274
        Top = 31
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
      object lbEZeut: TLabel
        Tag = 5
        Left = 274
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
      object lbELicence: TLabel
        Tag = 5
        Left = 274
        Top = 77
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
      object lbEType: TLabel
        Tag = 5
        Left = 274
        Top = 100
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
        Left = 274
        Top = 129
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
      object cbShemD: TCheckBox
        Tag = 5
        Left = 330
        Top = 31
        Width = 79
        Height = 14
        Caption = #1513#1501' '#1492#1504#1492#1490':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cbShemDClick
      end
      object cbEShemD: TComboBox
        Tag = 5
        Left = 104
        Top = 31
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
        TabOrder = 1
        OnEnter = cbEShemDEnter
      end
      object cbZeut: TCheckBox
        Tag = 5
        Left = 330
        Top = 54
        Width = 79
        Height = 14
        Caption = #1514'. '#1494#1492#1493#1514':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = cbShemDClick
      end
      object cbEZeut: TComboBox
        Tag = 5
        Left = 104
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
        TabOrder = 3
        OnEnter = cbEZeutEnter
      end
      object cbLicence: TCheckBox
        Tag = 5
        Left = 330
        Top = 77
        Width = 79
        Height = 14
        Caption = #1505#1493#1490' '#1512#1513#1497#1493#1503':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = cbShemDClick
      end
      object cbELicence: TComboBox
        Tag = 5
        Left = 104
        Top = 77
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
        TabOrder = 5
        OnEnter = cbELicenceEnter
      end
      object cbType: TCheckBox
        Tag = 5
        Left = 330
        Top = 100
        Width = 79
        Height = 14
        Caption = #1505#1493#1490' '#1512#1499#1489':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = cbShemDClick
      end
      object cbEType: TComboBox
        Tag = 5
        Left = 104
        Top = 100
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
        TabOrder = 7
        OnEnter = cbELicenceEnter
      end
      object cbEShem: TComboBox
        Tag = 5
        Left = 96
        Top = 124
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
        TabOrder = 9
        OnEnter = cbEShemEnter
      end
      object cbShem: TCheckBox
        Tag = 5
        Left = 312
        Top = 124
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
        TabOrder = 8
        OnClick = cbShemDClick
      end
    end
  end
end
