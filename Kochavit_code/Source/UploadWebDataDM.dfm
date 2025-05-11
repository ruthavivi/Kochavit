object dmUploadWebData: TdmUploadWebData
  OldCreateOrder = False
  Height = 170
  Width = 299
  object fdConnection: TFDConnection
    Params.Strings = (
      'Database=sorinh_kochavit_data'
      'User_Name=sorinh_user'
      'Server=s1103.usc1.mysecurecloudhost.com'
      'CharacterSet=utf8'
      'Password=12345'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 90
    Top = 24
  end
  object fdQuery: TFDQuery
    Connection = fdConnection
    Left = 178
    Top = 24
  end
  object qrGnrl: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    Params = <>
    Left = 240
    Top = 24
  end
  object fdPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    VendorLib = 'D:\My Programs\MySql\Win32\Debug\libmysql.dll'
    Left = 90
    Top = 76
  end
  object qrGnrl1: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    Params = <>
    Left = 240
    Top = 88
  end
end
