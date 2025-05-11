object frmAddAuto: TfrmAddAuto
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1492#1493#1505#1508#1492' '#1502#1512#1493#1499#1494#1514
  ClientHeight = 118
  ClientWidth = 250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 250
    Height = 77
    Align = alClient
    TabOrder = 0
    DesignSize = (
      250
      77)
    object Label1: TLabel
      Left = 176
      Top = 16
      Width = 57
      Height = 13
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1505#1493#1490' '#1512#1499#1489':'
    end
    object cbSug: TComboBox
      Left = 16
      Top = 35
      Width = 217
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      Items.Strings = (
        #1499#1500' '#1492#1505#1493#1490#1497#1501)
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 77
    Width = 250
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    object btnOk: TBitBtn
      Left = 136
      Top = 6
      Width = 75
      Height = 25
      Caption = #1488#1497#1513#1493#1512
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnCancel: TBitBtn
      Left = 40
      Top = 6
      Width = 75
      Height = 25
      Caption = #1489#1497#1496#1493#1500
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object tbTblType: TEDBTable
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    TableName = 'KTblType'
    Left = 8
    Top = 80
  end
end
