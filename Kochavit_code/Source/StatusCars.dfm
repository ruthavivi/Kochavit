inherited dlgStatusCars: TdlgStatusCars
  Caption = #1502#1510#1489#1514' '#1512#1499#1489#1497#1501' '#1493#1496#1497#1508#1493#1500#1497#1501
  ClientHeight = 184
  ClientWidth = 163
  OnCreate = FormCreate
  ExplicitWidth = 169
  ExplicitHeight = 213
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnPreview: TBitBtn
    Left = 46
    Top = 24
    OnClick = btnPreviewClick
    ExplicitLeft = 46
    ExplicitTop = 24
  end
  inherited btnPrint: TBitBtn
    Top = 151
    Enabled = False
    Visible = False
    ExplicitTop = 151
  end
  inherited btnEmail: TBitBtn
    Left = 46
    Top = 55
    OnClick = btnEmailClick
    ExplicitLeft = 46
    ExplicitTop = 55
  end
  inherited btnCancel: TBitBtn
    Left = 46
    Cancel = False
    Kind = bkCustom
    ExplicitLeft = 46
  end
  inherited Panel1: TPanel
    Left = 160
    Width = 3
    Height = 184
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
end
