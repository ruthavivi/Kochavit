object frmCause: TfrmCause
  Left = 262
  Top = 211
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1505#1497#1489#1514' '#1492#1506#1489#1512#1492' '#1500#1488#1512#1499#1497#1493#1503
  ClientHeight = 177
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 136
    Width = 322
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      322
      41)
    object btnYes: TBitBtn
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&'#1488#1497#1513#1493#1512
      Default = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 6
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnYesClick
    end
    object btnCancel: TBitBtn
      Left = 64
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&'#1489#1497#1496#1493#1500
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 322
    Height = 95
    Align = alClient
    TabOrder = 0
    DesignSize = (
      322
      95)
    object Label1: TLabel
      Left = 240
      Top = 16
      Width = 66
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1502#1493#1506#1491' '#1492#1506#1489#1512#1492':'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 240
      Top = 48
      Width = 66
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1505#1497#1489#1514' '#1492#1506#1489#1512#1492':'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object edMoed: TDBEdit
      Left = 82
      Top = 16
      Width = 153
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'Moed'
      DataSource = dsCause
      ParentBiDiMode = False
      TabOrder = 0
      OnExit = edMoedExit
      OnKeyDown = edMoedKeyDown
    end
    object edSibaId: TDBLookupComboBox
      Left = 82
      Top = 48
      Width = 152
      Height = 21
      DataField = 'LkpSiba'
      DataSource = dsCause
      TabOrder = 1
      OnExit = edSibaIdExit
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 322
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object dsCause: TDataSource
    DataSet = tbCrSiba
    Left = 8
    Top = 8
  end
  object tbClSiba: TEDBTable
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    IndexName = 'xOwnerId'
    MasterFields = 'Id'
    MasterSource = dmMain.dsClient
    TableName = 'KClSiba'
    Left = 64
    Top = 8
    object tbClSibaId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbClSibaOwnerId: TIntegerField
      FieldName = 'OwnerId'
    end
    object tbClSibaMoed: TDateField
      FieldName = 'Moed'
      EditMask = '!99/99/9999;1; '
    end
    object tbClSibaSibaId: TIntegerField
      FieldName = 'SibaId'
    end
    object tbClSibaLkpSiba: TStringField
      FieldKind = fkLookup
      FieldName = 'LkpSiba'
      LookupDataSet = tbTblCause
      LookupKeyFields = 'Id'
      LookupResultField = 'CauseCl'
      KeyFields = 'SibaId'
      Lookup = True
    end
  end
  object tbTblCause: TEDBTable
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    TableName = 'KTblCause'
    Left = 280
    Top = 8
    object tbTblCauseId: TAutoIncField
      FieldName = 'Id'
    end
    object tbTblCauseCauseCl: TStringField
      FieldName = 'CauseCl'
      Size = 15
    end
    object tbTblCauseCauseCr: TStringField
      FieldName = 'CauseCr'
      Size = 15
    end
    object tbTblCauseCauseDr: TStringField
      FieldName = 'CauseDr'
      Size = 15
    end
  end
  object tbCrSiba: TEDBTable
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    IndexName = 'xOwnerId'
    MasterFields = 'ID'
    MasterSource = dmCarList.dsCarList
    TableName = 'KCrSiba'
    Left = 120
    Top = 8
    object tbCrSibaId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object tbCrSibaOwnerId: TIntegerField
      FieldName = 'OwnerId'
    end
    object tbCrSibaMoed: TDateField
      FieldName = 'Moed'
      OnSetText = tbCrSibaMoedSetText
      EditMask = '!99/99/9999;1; '
    end
    object tbCrSibaSibaId: TIntegerField
      FieldName = 'SibaId'
    end
    object tbCrSibaClientId: TIntegerField
      FieldName = 'ClientId'
    end
    object tbCrSibaLkpSiba: TStringField
      FieldKind = fkLookup
      FieldName = 'LkpSiba'
      LookupDataSet = tbTblCause
      LookupKeyFields = 'Id'
      LookupResultField = 'CauseCr'
      KeyFields = 'SibaId'
      Lookup = True
    end
  end
  object tbDrSiba: TEDBTable
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    IndexName = 'xOwnerId'
    MasterFields = 'ID'
    MasterSource = dmDriverList.dsDriverList
    TableName = 'KDrSiba'
    Left = 176
    Top = 8
    object tbDrSibaId: TAutoIncField
      FieldName = 'Id'
    end
    object tbDrSibaOwnerId: TIntegerField
      FieldName = 'OwnerId'
    end
    object tbDrSibaMoed: TDateField
      FieldName = 'Moed'
      EditMask = '!99/99/9999;1; '
    end
    object tbDrSibaSibaId: TIntegerField
      FieldName = 'SibaId'
    end
    object tbDrSibaClientId: TIntegerField
      FieldName = 'ClientId'
    end
    object tbDrSibaLkpSiba: TStringField
      FieldKind = fkLookup
      FieldName = 'LkpSiba'
      LookupDataSet = tbTblCause
      LookupKeyFields = 'Id'
      LookupResultField = 'CauseDr'
      KeyFields = 'SibaId'
      Lookup = True
    end
  end
end
