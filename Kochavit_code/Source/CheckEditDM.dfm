inherited dmCheckEdit: TdmCheckEdit
  OldCreateOrder = True
  Height = 184
  Width = 289
  inherited qrGnrl: TEDBQuery
    Top = 80
  end
  object tbChecks: TEDBTable
    Filter = 'Nifda=False'
    Filtered = True
    BeforePost = tbChecksBeforePost
    AfterPost = tbChecksAfterPost
    OnNewRecord = tbChecksNewRecord
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    IndexName = 'xClientId'
    MasterFields = 'Id'
    MasterSource = dmMain.dsClient
    TableName = 'KChecks'
    Left = 40
    Top = 16
    object tbChecksId: TAutoIncField
      FieldName = 'Id'
    end
    object tbChecksClientId: TIntegerField
      FieldName = 'ClientId'
    end
    object tbChecksBankId: TSmallintField
      FieldName = 'BankId'
    end
    object tbChecksAcount: TIntegerField
      FieldName = 'Acount'
    end
    object tbChecksCheckNo: TIntegerField
      FieldName = 'CheckNo'
    end
    object tbChecksCheckSum: TFloatField
      FieldName = 'CheckSum'
      currency = True
    end
    object tbChecksAfkadaD: TDateField
      FieldName = 'AfkadaD'
      OnSetText = tbChecksAfkadaDSetText
      EditMask = '!99/99/9999;1; '
    end
    object tbChecksPidyonD: TDateField
      FieldName = 'PidyonD'
      OnSetText = tbChecksPidyonDSetText
      EditMask = '!99/99/9999;1; '
    end
    object tbChecksBill: TStringField
      FieldName = 'Bill'
      Size = 10
    end
    object tbChecksKabala: TIntegerField
      FieldName = 'Kabala'
    end
    object tbChecksReturn: TBooleanField
      FieldName = 'Return'
    end
    object tbChecksNifda: TBooleanField
      FieldName = 'Nifda'
    end
    object tbChecksLkpBank: TStringField
      FieldKind = fkLookup
      FieldName = 'LkpBank'
      LookupDataSet = tbTblBank
      LookupKeyFields = 'Id'
      LookupResultField = 'Bank'
      KeyFields = 'BankId'
      Lookup = True
    end
  end
  object tbTblBank: TEDBTable
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    IndexFieldNames = 'Bank'
    TableName = 'KTblBank'
    Left = 128
    Top = 80
  end
end
