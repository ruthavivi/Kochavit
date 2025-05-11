inherited dlgWrnSendMsg: TdlgWrnSendMsg
  Caption = #1513#1500#1497#1495#1514' '#1512#1513#1497#1502#1514' '#1489#1497#1511#1493#1512#1493#1514' '#1511#1512#1493#1489#1493#1514
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnPreview: TBitBtn
    OnClick = btnPrintClick
  end
  inherited btnPrint: TBitBtn
    OnClick = btnPrintClick
  end
  inherited btnEmail: TBitBtn
    OnClick = btnPrintClick
  end
  inherited Panel1: TPanel
    ExplicitLeft = 129
    ExplicitTop = 0
    ExplicitHeight = 144
    object Label1: TLabel
      Left = 80
      Top = 16
      Width = 71
      Height = 13
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1506#1491' '#1500#1514#1488#1512#1497#1498':'
    end
    object edTill: TDateTimePicker
      Left = 40
      Top = 32
      Width = 113
      Height = 24
      BiDiMode = bdRightToLeft
      Date = 37401.582241527800000000
      Time = 37401.582241527800000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
    end
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
    Left = 96
    Top = 16
  end
  object qrWrnCar: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    DataSource = dsClient
    SQL.Strings = (
      'SELECT DateToDo, Tipul, Number'
      'FROM KCrTipul Ct'
      'LEFT JOIN KCar Cr ON (Ct.CarId = Cr.Id)'
      'LEFT JOIN KTblTipul tT ON (Ct.TipulId = tT.Id)'
      
        'WHERE ClientId = :Id AND Ct.DateToDo <= :pTillDate AND Cr.Pail =' +
        ' True AND Cr.Freze = False'
      'ORDER BY DateToDo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pTillDate'
        ParamType = ptInput
      end>
    Left = 136
    Top = 88
  end
  object qrWrnDrv: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    DataSource = dsClient
    SQL.Strings = (
      'SELECT DateToDo, Heiter, ShemD'
      'FROM KDrHeiter Dh'
      'LEFT JOIN KDriver Dr ON (Dh.DriverId = Dr.Id)'
      'LEFT JOIN KTblHeiter tH ON (Dh.HeiterId = tH.Id)'
      
        'WHERE ClientId = :Id and DateToDo <= :pTillDate  AND Dr.Pail = T' +
        'rue AND Dr.Freze = False'
      'ORDER BY DateTodo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pTillDate'
        ParamType = ptInput
      end>
    Left = 200
    Top = 88
  end
  object dsClient: TDataSource
    DataSet = qrGnrl
    Left = 136
    Top = 32
  end
  object qrGnrl1: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    Params = <>
    Left = 96
    Top = 64
  end
end
