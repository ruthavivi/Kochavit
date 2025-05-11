inherited dlgStatusDrvs: TdlgStatusDrvs
  Caption = #1502#1510#1489#1514' '#1504#1492#1490#1497#1501' '#1493#1492#1497#1514#1512#1497#1501
  ClientHeight = 293
  ClientWidth = 302
  OnCreate = FormCreate
  ExplicitWidth = 308
  ExplicitHeight = 322
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnPreview: TBitBtn
    Left = 185
    Top = 24
    OnClick = btnPreviewClick
    ExplicitLeft = 46
    ExplicitTop = 24
  end
  inherited btnPrint: TBitBtn
    Left = 168
    Top = 151
    Enabled = False
    Visible = False
    ExplicitTop = 151
  end
  inherited btnEmail: TBitBtn
    Left = 185
    Top = 55
    OnClick = btnEmailClick
    ExplicitLeft = 46
    ExplicitTop = 55
  end
  inherited btnCancel: TBitBtn
    Left = 185
    Cancel = False
    Kind = bkCustom
    ExplicitLeft = 46
  end
  inherited Panel1: TPanel
    Left = 299
    Width = 3
    Height = 293
    ExplicitLeft = 160
    ExplicitTop = 0
    ExplicitWidth = 3
    ExplicitHeight = 184
  end
  inherited qrGnrl: TEDBQuery
    SQL.Strings = (
      
        'SELECT Id, Shem, Ktovet, Isuv, Mikud, Contact, Fax, EMail, EMail' +
        'X'
      'FROM KClient                                      '
      'WHERE Pail = True AND Freze = False AND  Id = :Id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptInput
      end>
    Left = 16
    Top = 48
  end
  object dsClient: TDataSource
    DataSet = qrGnrl
    Left = 104
    Top = 144
  end
  object qrGnrl1: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    Params = <>
    Left = 24
    Top = 112
  end
end
