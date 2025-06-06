object frmNoDataTipul: TfrmNoDataTipul
  Left = 254
  Top = 289
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1496#1497#1508#1493#1500#1497#1501' '#1500#1500#1488' '#1514#1488#1512#1497#1498' '#1489#1497#1510#1493#1506
  ClientHeight = 252
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefaultPosOnly
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 410
    Height = 169
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 408
      Height = 167
      Align = alClient
      DataSource = dsGnrl
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IdCar'
          Title.Caption = #1502#1505#39' '#1505#1497#1491#1493#1512#1497
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Number'
          Title.Caption = #1502#1505#1508#1512' '#1512#1497#1513#1493#1497
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Shem'
          Title.Caption = #1513#1501' '#1492#1495#1489#1512#1492
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Oved'
          Title.Caption = #1502#1496#1508#1500' '#1488#1495#1512#1488#1497
          Width = 122
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 169
    Width = 410
    Height = 40
    Align = alTop
    TabOrder = 1
    DesignSize = (
      410
      40)
    object Label1: TLabel
      Left = 342
      Top = 8
      Width = 60
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1513#1501' '#1492#1496#1497#1508#1493#1500':'
    end
    object cbTipul: TComboBox
      Left = 16
      Top = 8
      Width = 313
      Height = 21
      Anchors = [akTop, akRight]
      ItemHeight = 13
      TabOrder = 0
      OnSelect = cbTipulSelect
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 209
    Width = 410
    Height = 43
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      410
      43)
    object BitBtn1: TBitBtn
      Left = 130
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&'#1505#1490#1493#1512
      TabOrder = 0
      Kind = bkClose
    end
    object BitBtn2: TBitBtn
      Left = 234
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&'#1492#1491#1508#1505
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object qrGnrl: TQuery
    DatabaseName = 'Kb'
    SQL.Strings = (
      'SELECT Cr.IdCar, Cr.Number, tT.Tipul, tV.Oved, Cl.Shem'
      'FROM KCrTipul Ct'
      'LEFT JOIN KCar Cr ON Ct.CarId = Cr.Id'
      'LEFT JOIN KClient Cl ON Cl.Id = Cr.ClientId'
      'LEFT JOIN KTblTipul tT ON Ct.TipulId = tT.Id'
      'LEFT JOIN KTblOved tV ON Cr.OvedId = tV.Id'
      'WHERE tT.Tipul = :Tipul and DateToDo IS Null'
      'ORDER BY Cl.Shem, Cr.Number')
    Left = 56
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Tipul'
        ParamType = ptUnknown
      end>
  end
  object tbTblTipul: TTable
    DatabaseName = 'Kb'
    IndexFieldNames = 'Tipul'
    TableName = 'KTblTipul'
    Left = 64
    Top = 128
  end
  object dsTblTipul: TDataSource
    DataSet = tbTblTipul
    Left = 120
    Top = 128
  end
  object dsGnrl: TDataSource
    DataSet = qrGnrl
    Left = 104
    Top = 72
  end
  object RvRprt: TRvProject
    Engine = RvSystem
    ProjectFile = 
      'C:\Program Files\Borland\Delphi7\Projects\Kochavit\Reports\KvRpr' +
      't.rav'
    Left = 216
    Top = 64
  end
  object RvSystem: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.AccuracyMethod = amAppearance
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 168
    Top = 64
  end
  object rqNoDataTipul: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = qrGnrl
    Left = 224
    Top = 112
  end
end
