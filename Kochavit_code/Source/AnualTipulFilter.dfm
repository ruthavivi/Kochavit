inherited frmAnualTipulFilter: TfrmAnualTipulFilter
  Caption = #1514#1493#1499#1504#1497#1514' '#1506#1489#1493#1491#1492' '#1513#1504#1514#1497#1514
  ClientHeight = 160
  OldCreateOrder = True
  ExplicitHeight = 199
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 129
    ExplicitTop = 129
    inherited btnExecute: TBitBtn
      OnClick = btnExecuteClick
    end
  end
  inherited Panel2: TPanel
    Height = 129
    ExplicitHeight = 129
    inherited grbMain: TGroupBox
      Height = 127
      Caption = #1489#1504#1497#1514' '#1513#1488#1497#1500#1514#1492' '#1500#1514#1493#1499#1504#1497#1514' '#1506#1489#1493#1491#1492' '#1513#1504#1514#1497#1514
      ExplicitHeight = 127
      DesignSize = (
        441
        127)
      object lbEOved: TLabel
        Tag = 5
        Left = 290
        Top = 60
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
      object Label1: TLabel
        Left = 336
        Top = 32
        Width = 81
        Height = 16
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = #1514#1493#1499#1504#1497#1514' '#1500#1513#1504#1514':'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cxOved: TCheckBox
        Tag = 5
        Left = 336
        Top = 60
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
        TabOrder = 1
        OnClick = cxOvedClick
      end
      object cbEOved: TComboBox
        Tag = 5
        Left = 112
        Top = 60
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
        TabOrder = 2
        OnEnter = cbEOvedEnter
      end
      object edYear: TSpinEdit
        Left = 112
        Top = 32
        Width = 169
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 4
        MaxValue = 3000
        MinValue = 2000
        ParentFont = False
        TabOrder = 0
        Value = 2000
      end
    end
  end
end
