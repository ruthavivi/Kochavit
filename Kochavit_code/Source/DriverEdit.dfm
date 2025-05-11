inherited frmDriverEdit: TfrmDriverEdit
  Left = 164
  Top = 92
  ActiveControl = edZeut
  Caption = #1499#1512#1496#1497#1505' '#1504#1492#1490
  ClientHeight = 521
  ClientWidth = 704
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  ExplicitWidth = 720
  ExplicitHeight = 580
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 295
    Width = 704
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 262
    ExplicitWidth = 718
  end
  inherited PageControl1: TPageControl
    Width = 704
    Height = 249
    Align = alTop
    ExplicitWidth = 704
    ExplicitHeight = 249
    inherited TabSheet1: TTabSheet
      Caption = #1508#1512#1496#1497' '#1504#1492#1490
      ExplicitWidth = 696
      ExplicitHeight = 219
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 696
        Height = 219
        Align = alClient
        TabOrder = 0
        object Panel4: TPanel
          Left = 414
          Top = 1
          Width = 281
          Height = 217
          Align = alRight
          TabOrder = 0
          object GroupBox1: TGroupBox
            Left = 1
            Top = 1
            Width = 279
            Height = 215
            Align = alClient
            Caption = #1508#1512#1496#1497#1501' '#1488#1497#1513#1497#1501
            TabOrder = 0
            DesignSize = (
              279
              215)
            object Label1: TLabel
              Left = 96
              Top = 24
              Width = 39
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1514'. '#1494#1492#1493#1514':'
              Font.Charset = HEBREW_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 233
              Top = 72
              Width = 38
              Height = 15
              Anchors = [akTop, akRight]
              Caption = #1499#1514#1493#1489#1514':'
            end
            object Label2: TLabel
              Left = 225
              Top = 48
              Width = 46
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1513#1501' '#1492#1504#1492#1490':'
              Font.Charset = HEBREW_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 246
              Top = 96
              Width = 25
              Height = 15
              Anchors = [akTop, akRight]
              Caption = #1497#1513#1493#1489':'
            end
            object Label5: TLabel
              Left = 226
              Top = 120
              Width = 45
              Height = 15
              Anchors = [akTop, akRight]
              Caption = #1496#1500#1508#1493#1504#1497#1501':'
            end
            object Label7: TLabel
              Left = 65
              Top = 96
              Width = 34
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1502#1497#1511#1493#1491':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 229
              Top = 168
              Width = 42
              Height = 15
              Anchors = [akTop, akRight]
              Caption = #1514'. '#1500#1497#1491#1492':'
            end
            object Label18: TLabel
              Left = 224
              Top = 24
              Width = 47
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1502#1505#39' '#1505#1491#1493#1512#1497':'
              Font.Charset = HEBREW_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 231
              Top = 144
              Width = 40
              Height = 15
              Anchors = [akTop, akRight]
              Caption = #1488#1497#1502#1488#1497#1500':'
              OnClick = Label6Click
            end
            object edZeut: TDBEdit
              Left = 14
              Top = 24
              Width = 75
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'Zeut'
              DataSource = dmDriverEdit.dsDriver
              ParentBiDiMode = False
              TabOrder = 1
              OnExit = edZeutExit
            end
            object edShemD: TDBEdit
              Left = 14
              Top = 48
              Width = 195
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdRightToLeft
              DataField = 'ShemD'
              DataSource = dmDriverEdit.dsDriver
              ParentBiDiMode = False
              TabOrder = 2
              OnExit = edZeutExit
            end
            object edKtovetD: TDBEdit
              Left = 14
              Top = 72
              Width = 195
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdRightToLeft
              DataField = 'KtovetD'
              DataSource = dmDriverEdit.dsDriver
              ParentBiDiMode = False
              TabOrder = 3
            end
            object edIsuvD: TDBEdit
              Left = 101
              Top = 96
              Width = 108
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdRightToLeft
              DataField = 'IsuvD'
              DataSource = dmDriverEdit.dsDriver
              ParentBiDiMode = False
              TabOrder = 4
            end
            object edMikudD: TDBEdit
              Left = 16
              Top = 99
              Width = 48
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'MikudD'
              DataSource = dmDriverEdit.dsDriver
              MaxLength = 7
              ParentBiDiMode = False
              TabOrder = 5
            end
            object edTelD: TDBEdit
              Left = 120
              Top = 120
              Width = 89
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'TelD'
              DataSource = dmDriverEdit.dsDriver
              ParentBiDiMode = False
              TabOrder = 6
            end
            object edCelD: TDBEdit
              Left = 16
              Top = 120
              Width = 89
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'CelD'
              DataSource = dmDriverEdit.dsDriver
              ParentBiDiMode = False
              TabOrder = 7
            end
            object edBorn: TDBEdit
              Left = 120
              Top = 168
              Width = 89
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'Born'
              DataSource = dmDriverEdit.dsDriver
              MaxLength = 10
              ParentBiDiMode = False
              TabOrder = 9
            end
            object edCodDrv: TDBEdit
              Left = 144
              Top = 24
              Width = 65
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'CodDrv'
              DataSource = dmDriverEdit.dsDriver
              ParentBiDiMode = False
              TabOrder = 0
              OnExit = edZeutExit
            end
            object edEMail: TDBEdit
              Left = 16
              Top = 144
              Width = 193
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'EMail'
              DataSource = dmDriverEdit.dsDriver
              ParentBiDiMode = False
              TabOrder = 8
            end
          end
        end
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 413
          Height = 217
          Align = alClient
          TabOrder = 1
          object GroupBox2: TGroupBox
            Left = 1
            Top = 1
            Width = 411
            Height = 215
            Align = alClient
            Caption = #1508#1512#1496#1497' '#1512#1513#1497#1493#1503
            TabOrder = 0
            DesignSize = (
              411
              215)
            object Label10: TLabel
              Left = 349
              Top = 21
              Width = 47
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1512#1513#1497#1493#1503' '#1502#1505#39':'
              Font.Charset = HEBREW_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 175
              Top = 21
              Width = 45
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1505#1493#1490' '#1512#1513#1497#1493#1503':'
              Font.Charset = HEBREW_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 354
              Top = 45
              Width = 42
              Height = 15
              Anchors = [akTop, akRight]
              Caption = #1492#1490#1489#1500#1493#1514':'
            end
            object Label13: TLabel
              Left = 330
              Top = 69
              Width = 66
              Height = 15
              Anchors = [akTop, akRight]
              Caption = #1513#1504#1514' '#1492#1504#1508#1511#1492':'
            end
            object Label15: TLabel
              Left = 155
              Top = 69
              Width = 73
              Height = 15
              Anchors = [akTop, akRight]
              Caption = #1514#1495#1497#1500#1514' '#1506#1489#1493#1491#1492':'
            end
            object Label17: TLabel
              Left = 359
              Top = 117
              Width = 37
              Height = 15
              Anchors = [akTop, akRight]
              Caption = #1492#1506#1512#1493#1514':'
            end
            object Label16: TLabel
              Left = 325
              Top = 93
              Width = 71
              Height = 15
              Anchors = [akTop, akRight]
              Caption = #1502#1496#1508#1500' '#1488#1495#1512#1488#1497':'
              Font.Charset = HEBREW_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object edLicenceNum: TDBEdit
              Left = 237
              Top = 21
              Width = 81
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'LicenceNum'
              DataSource = dmDriverEdit.dsDriver
              ParentBiDiMode = False
              TabOrder = 0
              OnExit = edZeutExit
            end
            object edLicenceTyp: TDBEdit
              Left = 128
              Top = 21
              Width = 38
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdRightToLeft
              DataField = 'LicenceTyp'
              DataSource = dmDriverEdit.dsDriver
              ParentBiDiMode = False
              TabOrder = 1
            end
            object edLimit: TDBEdit
              Left = 69
              Top = 45
              Width = 249
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdRightToLeft
              DataField = 'Limit'
              DataSource = dmDriverEdit.dsDriver
              ParentBiDiMode = False
              TabOrder = 3
            end
            object edLicencePrd: TDBEdit
              Left = 245
              Top = 69
              Width = 73
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'LicencePrd'
              DataSource = dmDriverEdit.dsDriver
              MaxLength = 4
              ParentBiDiMode = False
              TabOrder = 4
            end
            object edWorkStrt: TDBEdit
              Left = 69
              Top = 69
              Width = 81
              Height = 23
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'WorkStrt'
              DataSource = dmDriverEdit.dsDriver
              MaxLength = 10
              ParentBiDiMode = False
              TabOrder = 5
            end
            object edRemark: TDBMemo
              Left = 69
              Top = 117
              Width = 249
              Height = 52
              Anchors = [akTop, akRight]
              DataField = 'Remark'
              DataSource = dmDriverEdit.dsDriver
              MaxLength = 120
              ScrollBars = ssVertical
              TabOrder = 7
            end
            object edOvedId: TDBLookupComboBox
              Left = 70
              Top = 90
              Width = 249
              Height = 23
              Anchors = [akTop, akRight]
              DataField = 'LkpOved'
              DataSource = dmDriverEdit.dsDriver
              TabOrder = 6
              OnKeyDown = edOvedIdKeyDown
            end
            object edLicenceId: TDBLookupComboBox
              Left = 69
              Top = 21
              Width = 53
              Height = 23
              Anchors = [akTop, akRight]
              DataField = 'LkpLicence'
              DataSource = dmDriverEdit.dsDriver
              TabOrder = 2
              OnExit = edLicenceIdExit
              OnKeyDown = edOvedIdKeyDown
            end
          end
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 704
    TabOrder = 2
    ExplicitWidth = 704
    inherited lbHeader: TLabel
      Left = 635
      Height = 44
      ExplicitLeft = 635
    end
    inherited ToolBar1: TToolBar
      Width = 634
      ExplicitWidth = 634
      inherited ToolButton8: TToolButton
        Enabled = False
        Visible = False
      end
      inherited btnPrint: TToolButton
        ExplicitWidth = 46
      end
      object ToolButton12: TToolButton
        Left = 388
        Top = 0
        Cursor = crHandPoint
        Action = acSendEmail
        DropdownMenu = pmEmailsSend
        Style = tbsDropDown
      end
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 298
    Width = 704
    Height = 223
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 1
    object PageControl2: TPageControl
      Left = 1
      Top = 1
      Width = 702
      Height = 221
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet2: TTabSheet
        Caption = #1492#1497#1514#1512#1497#1501' '#1502#1497#1493#1495#1491#1497#1501
        object DBGrid1: TDBGrid
          Left = 207
          Top = 0
          Width = 487
          Height = 191
          Align = alRight
          DataSource = dmDriverEdit.dsDrHeiter
          TabOrder = 0
          TitleFont.Charset = HEBREW_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnEnter = DBGrid1Enter
          Columns = <
            item
              Expanded = False
              FieldName = 'LHeiter'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DateDone'
              ReadOnly = True
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DateToDo'
              Width = 87
              Visible = True
            end>
        end
        object ToolBar2: TToolBar
          Left = 170
          Top = 0
          Width = 37
          Height = 191
          Align = alRight
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 37
          Caption = 'ToolBar2'
          Images = ImageList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object ToolButton1: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Action = acDrHeiterDel
            Wrap = True
          end
          object ToolButton11: TToolButton
            Left = 0
            Top = 36
            Cursor = crHandPoint
            Action = acAddTipulim
          end
        end
      end
      object TabSheet9: TTabSheet
        Caption = #1512#1499#1489#1497#1501' '#1510#1502#1493#1491#1497#1501
        ImageIndex = 7
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid6: TDBGrid
          Left = 232
          Top = 0
          Width = 462
          Height = 191
          Align = alRight
          DataSource = dmDriverEdit.dsCrDrv
          TabOrder = 0
          TitleFont.Charset = HEBREW_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'LkpCar'
              Title.Caption = #1512#1513#1497#1493#1503' '#1502#1505#1508#1512
              Visible = True
            end>
        end
        object ToolBar9: TToolBar
          Left = 195
          Top = 0
          Width = 37
          Height = 191
          Align = alRight
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 37
          Caption = 'ToolBar2'
          Images = ImageList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object ToolButton10: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Action = acCrDrvDel
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = #1489#1491#1497#1511#1493#1514' '#1496#1499#1493#1490#1512#1507
        ImageIndex = 5
        object CheckDBGrid1: TCheckDBGrid
          Left = 37
          Top = 0
          Width = 657
          Height = 191
          Align = alClient
          DataSource = dmDriverEdit.dsDrTaho
          TabOrder = 0
          TitleFont.Charset = HEBREW_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnEnter = CheckDBGrid1Enter
          Columns = <
            item
              Expanded = False
              FieldName = 'Moed'
              Title.Caption = #1514#1488#1512#1497#1498' '#1504#1505#1497#1506#1492
              Width = 77
              Visible = True
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end
            item
              Expanded = False
              FieldName = 'LkpCar'
              Title.Caption = #1512#1499#1489' '#1502#1505#1508#1512
              Width = 70
              Visible = True
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end
            item
              Expanded = False
              FieldName = 'Speed'
              Title.Caption = #1495#1512#1490' '#1489#1502#1492#1497#1512#1493#1514
              Width = 77
              Visible = True
              Check = True
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end
            item
              Expanded = False
              FieldName = 'Zman'
              Title.Caption = #1495#1512#1490' '#1489#1494#1502#1503
              Visible = True
              Check = True
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end
            item
              Expanded = False
              FieldName = 'Harig'
              Title.Caption = #1495#1512#1497#1490#1492' '#1488#1495#1512
              Width = 62
              Visible = True
              Check = True
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end
            item
              Expanded = False
              FieldName = 'Remark'
              Title.Caption = #1492#1506#1512#1493#1514
              Width = 225
              Visible = True
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end>
        end
        object ToolBar3: TToolBar
          Left = 0
          Top = 0
          Width = 37
          Height = 191
          Align = alLeft
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 37
          Caption = 'ToolBar2'
          Images = ImageList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object ToolButton9: TToolButton
            Left = 0
            Top = 0
            Action = acDrTahoDel
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = #1514#1488#1493#1504#1493#1514
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid2: TDBGrid
          Left = 92
          Top = 0
          Width = 602
          Height = 191
          Align = alRight
          DataSource = dmDriverEdit.dsDrAcdnt
          TabOrder = 0
          TitleFont.Charset = HEBREW_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'AcdntD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LCar'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WithInjr'
              PickList.Strings = (
                #1499#1503
                #1500#1488)
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quilty'
              PickList.Strings = (
                #1499#1503
                #1500#1488)
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tipul'
              Width = 320
              Visible = True
            end>
        end
        object ToolBar4: TToolBar
          Left = 55
          Top = 0
          Width = 37
          Height = 191
          Align = alRight
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 37
          Caption = 'ToolBar2'
          Images = ImageList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object ToolButton3: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Action = acDrAcdntDel
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = #1506#1489#1497#1512#1493#1514' '#1493#1491#1493#1495#1493#1514
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid3: TDBGrid
          Left = 37
          Top = 0
          Width = 657
          Height = 191
          Align = alClient
          DataSource = dmDriverEdit.dsDrAvira
          TabOrder = 0
          TitleFont.Charset = HEBREW_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'AviraD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descrpt'
              Title.Caption = #1502#1492#1493#1514' '#1492#1506#1489#1497#1512#1492
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DohNum'
              Title.Caption = #1502#1505#1508#1512' '#1491#1493'"'#1495
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tipul'
              Width = 237
              Visible = True
            end>
        end
        object ToolBar5: TToolBar
          Left = 0
          Top = 0
          Width = 37
          Height = 191
          Align = alLeft
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 37
          Caption = 'ToolBar2'
          Images = ImageList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object ToolButton4: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Action = acDrAviraDel
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = #1511#1493#1512#1505#1497#1501
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid4: TDBGrid
          Left = 160
          Top = 0
          Width = 534
          Height = 191
          Align = alRight
          DataSource = dmDriverEdit.dsDrCourse
          TabOrder = 0
          TitleFont.Charset = HEBREW_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'LCourse'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Organize'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StartD'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EndD'
              Visible = True
            end>
        end
        object ToolBar6: TToolBar
          Left = 123
          Top = 0
          Width = 37
          Height = 191
          Align = alRight
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 37
          Caption = 'ToolBar2'
          Images = ImageList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object ToolButton5: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Action = acDrCourseDel
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = #1489#1491#1497#1511#1493#1514' '#1512#1508#1493#1488#1497#1493#1514
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid5: TDBGrid
          Left = 160
          Top = 0
          Width = 534
          Height = 191
          Align = alRight
          DataSource = dmDriverEdit.dsDrBdika
          TabOrder = 0
          TitleFont.Charset = HEBREW_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'BdikaD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Bdika'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Makom'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tipul'
              Width = 64
              Visible = True
            end>
        end
        object ToolBar7: TToolBar
          Left = 123
          Top = 0
          Width = 37
          Height = 191
          Align = alRight
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 37
          Caption = 'ToolBar2'
          Images = ImageList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object ToolButton6: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Action = acDrBdikaDel
          end
        end
      end
      object TabSheet8: TTabSheet
        Caption = #1502#1506#1511#1489' '#1492#1493#1491#1506#1493#1514
        ImageIndex = 6
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid7: TDBGrid
          Left = 37
          Top = 0
          Width = 657
          Height = 191
          Align = alClient
          DataSource = dmDriverEdit.dsDrFollow
          TabOrder = 0
          TitleFont.Charset = HEBREW_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Moed'
              Title.Caption = #1514#1488#1512#1497#1498
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Sha'
              Title.Caption = #1513#1506#1492
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Remark'
              Title.Caption = #1492#1506#1512#1493#1514
              Width = 506
              Visible = True
            end>
        end
        object ToolBar8: TToolBar
          Left = 0
          Top = 0
          Width = 37
          Height = 191
          Align = alLeft
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 37
          Caption = 'ToolBar2'
          Images = ImageList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object ToolButton7: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Action = acDrFollowDel
          end
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 264
    Top = 408
    inherited acSave: TAction
      OnExecute = acSaveExecute
    end
    inherited acMail: TAction
      OnExecute = acMailExecute
    end
    inherited acPrint: TAction
      OnExecute = acPrintExecute
    end
    inherited acScan: TAction
      OnExecute = acScanExecute
    end
    object acAutoHeiter: TAction [4]
    end
    inherited acPhoto: TAction
      Caption = #1514#1497#1511#1497#1492' '#1500#1508#1497' '#1513#1501' '#1504#1492#1490
      OnExecute = acPhotoExecute
    end
    inherited acDocument: TAction
      OnExecute = acDocumentExecute
    end
    inherited acShowScan: TAction
      OnExecute = acShowScanExecute
    end
    inherited acPrintLabel: TAction
      OnExecute = acPrintLabelExecute
    end
    inherited acShowFolder: TAction
      OnExecute = acShowFolderExecute
    end
    object acPrintAndDtl: TAction
      Caption = #1499#1493#1500#1500' '#1508#1512#1496#1497#1501
    end
    object acDrHeiterDel: TDataSetDelete
      Category = 'Dataset'
      Enabled = False
      Hint = #1489#1497#1496#1493#1500' '#1492#1497#1514#1512
      ImageIndex = 10
      DataSource = dmDriverEdit.dsDrHeiter
    end
    object acDrTahoDel: TDataSetDelete
      Category = 'Dataset'
      Enabled = False
      Hint = #1489#1497#1496#1493#1500' '#1512#1497#1513#1493#1501' '#1496#1499#1493#1490#1512#1507
      ImageIndex = 10
      DataSource = dmDriverEdit.dsDrTaho
    end
    object acDrAcdntDel: TDataSetDelete
      Category = 'Dataset'
      Enabled = False
      Hint = #1489#1497#1496#1493#1500' '#1512#1497#1513#1493#1501' '#1514#1488#1493#1504#1492
      ImageIndex = 10
      DataSource = dmDriverEdit.dsDrAcdnt
    end
    object acDrAviraDel: TDataSetDelete
      Category = 'Dataset'
      Enabled = False
      Hint = #1489#1497#1496#1493#1500' '#1512#1497#1513#1493#1501' '#1506#1489#1497#1512#1492
      ImageIndex = 10
      DataSource = dmDriverEdit.dsDrAvira
    end
    object acDrCourseDel: TDataSetDelete
      Category = 'Dataset'
      Enabled = False
      Hint = #1489#1497#1496#1493#1500' '#1511#1493#1512#1505
      ImageIndex = 10
      DataSource = dmDriverEdit.dsDrCourse
    end
    object acDrBdikaDel: TDataSetDelete
      Category = 'Dataset'
      Enabled = False
      Hint = #1489#1497#1496#1493#1493#1500#1500' '#1489#1491#1497#1511#1492' '#1512#1508#1493#1488#1497#1514
      ImageIndex = 10
      DataSource = dmDriverEdit.dsDrBdika
    end
    object acDrFollowDel: TDataSetDelete
      Category = 'Dataset'
      Enabled = False
      Hint = #1489#1497#1496#1493#1500' '#1512#1513#1493#1502#1514' '#1502#1506#1511#1489
      ImageIndex = 10
      DataSource = dmDriverEdit.dsDrFollow
    end
    object acAddTipulim: TAction
      Caption = 'acAddTipulim'
      Hint = #1492#1493#1505#1508#1514' '#1492#1497#1514#1512#1497#1501' '#1511#1489#1493#1506#1497#1501
      ImageIndex = 11
      OnExecute = acAddTipulimExecute
    end
    object acCrDrvDel: TDataSetDelete
      Category = 'Dataset'
      Enabled = False
      Hint = #1489#1497#1496#1493#1500'  '#1512#1499#1489' '#1510#1502#1493#1491
      ImageIndex = 10
      DataSource = dmDriverEdit.dsCrDrv
    end
    object acSendEmail: TAction
      Hint = #1513#1500#1497#1495#1514' '#1492#1493#1491#1506#1514' '#1491#1493#1488#1512' '#1488#1500#1511#1496#1512#1493#1504#1497
      ImageIndex = 12
      OnExecute = acSendEmailExecute
    end
    object acEmailsSend: TAction
      Caption = #1492#1493#1491#1506#1493#1514' '#1513#1504#1513#1500#1495#1493
      Hint = #1492#1493#1491#1506#1493#1514' '#1491#1493#1488#1512' '#1488#1500#1511#1496#1512#1493#1504#1497' '#1513#1504#1513#1500#1495#1493
      OnExecute = acEmailsSendExecute
    end
  end
  inherited MainMenu1: TMainMenu
    Left = 248
    Top = 344
  end
  inherited OpenDialog: TOpenDialog
    Left = 32
    Top = 128
  end
  inherited dlgOpenPhoto: TOpenPictureDialog
    Left = 124
    Top = 357
  end
  inherited ImageList: TImageList
    Left = 416
    Top = 416
    Bitmap = {
      494C01010D00A80084001E001E00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000007800000078000000010020000000000000E1
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00000000000000000000FF
      FF00000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000FFFF0000FFFF00000000000000000000FFFF00000000000000000000FF
      FF00000000000000000000FFFF00000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      800080808000808080000000000000FFFF00808080000000000000FFFF008080
      80000000000000FFFF008080800000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF00808080000000000000FFFF008080
      80000000000000FFFF008080800000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000808080000000
      000000000000808080008080800000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080800000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080800000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080800000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FF00
      0000FF000000FF000000FF000000FF00000000000000FF000000FF000000FF00
      000000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FF00
      0000FF000000FF00000000000000FF000000FF000000FF00000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000FF0000FFFF000000FF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF000000000000FFFF000000FF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000FF0000FFFF000000FF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF000000000000FFFF000000FF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004040
      40FF232323FF232323FF6A6A6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000505860FF2A486AFF316A
      A1FF164060FF164060FF2A3131FF6A6A6AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000505860FF2A486AFF316A
      A1FF164060FF164060FF2A3131FF6A6A6AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000505860FF2A4873FF2A4873FF407BB6FF487BC0FF3873
      ABFF1C507BFF1C507BFF164060FF2A3131FF6A6A6AFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C04800FFC04800FFC04800FFC04800FFC04800FFC04800FFC04800FFC048
      00FFC04800FFC04800FFC04800FFC04800FFC04800FFC04800FFC04800FFC048
      00FFC04800FFC04800FFC04800FFC04800FFC04800FFC04800FFC04800FFC048
      00FFC04800FF0000000000000000000000000000000000000000000000000000
      0000505860FF2A5073FF407BB6FF487BC0FF487BC0FF5084CAFF487BC0FF3873
      ABFF1C507BFF1C507BFF1C507BFF164060FF2A3131FF6A6A6AFF6A6A6AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C04800FFC04800FFFFFFFFFFFFFFF4FFFFF4EAFFFFF4E0FFFFF4E0FFFFEA
      E0FFFFEAD4FFFFEACAFFFFEACAFFFFEACAFFFFE0C0FFFFE0B6FFFFE0B6FFFFD4
      ABFFFFD4ABFFFFD4A1FFFFD4A1FFFFCA98FFFFCA98FFFFCA98FFFFCA8FFFFFCA
      8FFFC04800FF0000000000000000000000000000000050586AFF315073FF3150
      73FF4073B6FF487BC0FF4884CAFF5084C0FF5084C0FF407BB6FF4884CAFF3873
      ABFF1C507BFF1C507BFF1C507BFF1C507BFF164060FF2A3131FF2A3131FF6A6A
      6AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008A4F4FFF8A4F4FFF8A4F4FFF8A4F4FFF8A4F4FFF8A4F
      4FFF8A4F4FFF8A4F4FFF8A4F4FFF8A4F4FFF8A4F4FFF8A4F4FFF8A4F4FFF8A4F
      4FFF8A4F4FFF8A4F4FFF8A4F4FFF8A4F4FFF8A4F4FFF8A4F4FFF8A4F4FFF8A4F
      4FFF8A4F4FFF8A4F4FFF8A4F4FFF000DC7FF000DC7FF000DC7FF000000000000
      0000C04800FFC04800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FFFFFFF4FFFFFF
      F4FFFFFFF4FFFFF4EAFFFFF4EAFFFFF4EAFFFFEACAFFFFE0C0FFFFE0B6FFFFE0
      B6FFFFE0B6FFFFD4ABFFFFD4A1FFFFD4A1FFFFCA98FFFFCA98FFFFCA98FFFFCA
      8FFFC04800FF00000000000000000000000000000000163148FF487BC0FF487B
      C0FF487BC0FF4073B6FF3873ABFF1C507BFF1C507BFF3873A1FF5084CAFF3873
      ABFF1C507BFF1C507BFF1C507BFF1C507BFF1C507BFF164060FF164060FF2331
      31FF6A6A6AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000844016FF844016FF844016FF844016FF8440
      16FF844016FF844016FF844016FF844016FF844016FF844016FF844016FF8440
      16FF844016FF844016FF844016FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F3D4FFFC7A295FFC7A295FFF4E9DFFFF4E9DFFFF4DFBFFFF4DF
      BFFFF4DFBFFFF4DFBFFFF4DFBFFF000DC7FF000DC7FF000DC7FFF4D3ABFFF4D3
      ABFFF4D3ABFFF4D3ABFFF4D3ABFFF4D3ABFFF4D3ABFFF4D3ABFFF4C998FFF4C9
      98FFF4C998FFF4C998FF000DC7FF000DC7FF000DC7FF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF4FFFFFFF4FFFFF4EAFFFFF4EAFFFFF4EAFFFFEACAFFFFEACAFFFFE0
      B6FFFFE0B6FFFFE0B6FFFFD4ABFFFFD4A1FFFFD4A1FFFFD4A1FFFFCA98FFFFCA
      98FFC04800FF00000000000000000000000000000000163148FF487BC0FF487B
      C0FF487BC0FF4073B6FF3873ABFF1C507BFF1C507BFF3873A1FF5084CAFF3873
      ABFF1C507BFF1C507BFF1C507BFF1C507BFF1C507BFF164060FF164060FF2331
      31FF6A6A6AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000844016FF844016FF844016FF844016FF8440
      16FF844016FF844016FF844016FF844016FF844016FF844016FF844016FF8440
      16FF844016FF844016FF844016FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F3D4FFFC7A295FFC7A295FFF4E9DFFFF4E9DFFFF4DFBFFFF4DF
      BFFFF4DFBFFFF4DFBFFFF4DFBFFF000DC7FF000DC7FF000DC7FFF4D3ABFFF4D3
      ABFFF4D3ABFFF4D3ABFFF4D3ABFFF4D3ABFFF4D3ABFFF4D3ABFFF4C998FFF4C9
      98FFF4C998FFF4C998FF000DC7FF000DC7FF000DC7FF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF4FFFFFFF4FFFFF4EAFFFFF4EAFFFFF4EAFFFFEACAFFFFEACAFFFFE0
      B6FFFFE0B6FFFFE0B6FFFFD4ABFFFFD4A1FFFFD4A1FFFFD4A1FFFFCA98FFFFCA
      98FFC04800FF00000000000000000000000000000000163148FF487BC0FF487B
      C0FF11386AFF1C507BFF1C507BFF032350FF032350FF23508FFF487BC0FF3873
      ABFF2A608FFF2A608FFF5084C0FF1C507BFF1C507BFF1C507BFF1C507BFF1640
      60FF233131FF6A6A6AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000844016FFE0C0A1FFE0C0A1FFA15816FFA158
      16FFA15816FFA15816FFA15816FFA15816FFA15816FFA15816FFA15816FFA158
      16FFF4E0CAFF844016FFA15816FF844016FF844016FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F3D4FFFFFF0F0FFFFF0F0FFFFF0F0FFF4E9DFFFF4E9DFFFF4DF
      BFFFF4DFBFFFF4DFBFFFF4DFBFFF000DC7FF000DC7FF000DC7FF000DC7FFF4DF
      BFFFF4DFBFFFF4D3ABFFF4D3ABFFF4D3ABFFF4D3ABFFF4D3ABFFF4D3ABFFF4D3
      ABFFF4C998FF000DC7FF000DC7FF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFD4D4D4FF848484FF848484FF848484FFFFFF
      FFFFD4D4D4FF848484FF848484FF848484FF848484FF848484FF848484FF8484
      84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFCA
      98FFC04800FF00000000000000000000000000000000163148FF487BC0FF487B
      C0FF062A58FF063158FF114073FF316AA1FF316AA1FF4884CAFF6098E0FF6AAB
      EAFF7B98B6FF7B98B6FF586A7BFF407BABFF1C507BFF1C507BFF1C507BFF1C50
      7BFF164060FF233131FF6A6A6AFF6A6A6AFF0000000000000000000000000000
      0000000000000000000000000000844016FFE0C0A1FFE0C0A1FFAB6031FFAB60
      31FFAB6031FFAB6031FFAB6031FFAB6031FFAB6031FFAB6031FFAB6031FFAB60
      31FFF4E0CAFF844016FFA15816FFA15816FFA15816FF844016FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F3D4FFFFFF0F0FFFFF0F0FFFFF4E9FFFFF0F0FFF4E9DFFFF4E9
      DFFFF4E9DFFFF4DFBFFFF4DFBFFF000DC7FF000DC7FF000DC7FF000DC7FF000D
      C7FFF4DFBFFFF4DFBFFFF4DFBFFFF4DFBFFFF4D3ABFFF4D3ABFFF4D3ABFFF4D3
      ABFF000DC7FF000DC7FFF4C998FF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FFFFFFF4FFFFF4EAFFFFEA
      CAFFFFEACAFFFFEACAFFFFEACAFFFFEACAFFFFEACAFFFFEACAFFFFD4A1FFFFD4
      A1FFC04800FF00000000000000000000000000000000163148FF487BC0FF487B
      C0FF11386AFF316AA1FF4884CAFF6098E0FF6098E0FF73ABEAFF84A1CAFFA1A1
      ABFFC0C0C0FFC0C0C0FF6A606AFF8FA1B6FF316A98FF1C507BFF1C507BFF1C50
      7BFF1C507BFF164060FF233131FF233131FF6A6A6AFF00000000000000000000
      0000000000000000000000000000844016FFE0C0A1FFE0C0A1FFAB6031FFAB60
      31FFAB6031FFAB6031FFAB6031FFAB6031FFAB6031FFAB6031FFAB6031FFAB60
      31FFF4E0CAFF844016FFA15816FFA15816FFA15816FFA15816FF844016FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F454FFFFFF0F0FFFFF0F0FFD6D6D6FF8A8A8AFF8A8A8AFF8A8A
      8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF000DE3FF000DE3FF000DC7FF000D
      C7FF000DC7FF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF696969FF000DC7FF000D
      C7FF000DC7FF696969FFF4C998FF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFD4D4D4FF848484FF848484FF848484FFFFFF
      FFFFE0E0E0FF848484FF848484FF848484FF848484FF848484FF848484FF8484
      84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFEA
      CAFFC04800FF00000000000000000000000000000000163148FF487BC0FF487B
      C0FF4884CAFF6098E0FF73ABEAFF84A1CAFF84A1CAFFA1A1ABFFC0B6C0FFCAC0
      CAFFCACACAFFCACACAFF7B737BFFA1A1A1FF7B8498FF3873A1FF3873A1FF1C50
      7BFF1C507BFF1C507BFF164060FF164060FF233131FF6A6A6AFF000000000000
      0000000000000000000000000000844016FF7B7B7BFF7B7B7BFFE0C0A1FFD484
      58FFD48458FFD48458FFD48458FFD48458FFD48458FFD48458FFD48458FFD484
      58FFF4E0CAFF7B7B7BFF844016FFA15816FFA15816FFA15816FFA15816FF2331
      7BFF000000000000000000000000000000000000000000000000000000000000
      0000000000007F454FFFFFF0F0FFFFF0F0FFFFF4E9FFFFF4E9FFFFF4E9FFF4E9
      DFFFF4E9DFFFF4E9DFFFF4E9DFFFF4E9DFFFF4E9DFFFF4E9DFFFF4DFBFFF000D
      C7FF000DC7FF000DC7FF000DC7FFF4DFBFFF000DC7FF000DC7FF000DC7FF000D
      C7FFF4D3ABFFF4D3ABFFF4D3ABFF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFEACAFFFFEACAFFFFEACAFFFFEACAFFFFEACAFFFFEA
      CAFFC04800FF00000000000000000000000000000000163148FF487BC0FF487B
      C0FF4884CAFF6098E0FF73ABEAFF84A1CAFF84A1CAFFA1A1ABFFC0B6C0FFCAC0
      CAFFCACACAFFCACACAFF7B737BFFA1A1A1FF7B8498FF3873A1FF3873A1FF1C50
      7BFF1C507BFF1C507BFF164060FF164060FF233131FF6A6A6AFF000000000000
      0000000000000000000000000000844016FF7B7B7BFF7B7B7BFFE0C0A1FFD484
      58FFD48458FFD48458FFD48458FFD48458FFD48458FFD48458FFD48458FFD484
      58FFF4E0CAFF7B7B7BFF844016FFA15816FFA15816FFA15816FFA15816FF2331
      7BFF000000000000000000000000000000000000000000000000000000000000
      0000000000007F454FFFFFF0F0FFFFF0F0FFFFF4E9FFFFF4E9FFFFF4E9FFF4E9
      DFFFF4E9DFFFF4E9DFFFF4E9DFFFF4E9DFFFF4E9DFFFF4E9DFFFF4DFBFFF000D
      C7FF000DC7FF000DC7FF000DC7FFF4DFBFFF000DC7FF000DC7FF000DC7FF000D
      C7FFF4D3ABFFF4D3ABFFF4D3ABFF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFEACAFFFFEACAFFFFEACAFFFFEACAFFFFEACAFFFFEA
      CAFFC04800FF000000000000000000000000000000001C3850FF6098E0FF6098
      E0FF73ABEAFF84ABCAFFA1ABB6FFC0C0C0FFC0C0C0FFD4D4D4FFD4CAD4FFD4CA
      D4FFD4CAD4FFD4CAD4FF7B7B7BFFABA1ABFF989898FF60737BFF60737BFF4073
      ABFF1C507BFF1C507BFF1C507BFF1C507BFF164060FF233131FF606A60FF0000
      000000000000000000000000000000000000844016FF844016FFE0C0A1FFE0C0
      A1FFE0C0A1FFE0C0A1FFE0C0A1FFE0C0A1FFE0C0A1FFF4E0CAFFF4E0CAFFF4E0
      CAFFE0E0E0FFE0C0A1FF844016FFA15816FFA15816FFA15816FFA15816FF3150
      84FF23317BFF23317BFF00000000000000000000000000000000000000000000
      0000000000007F454FFFFFF0F0FFFFF0F0FFD6D6D6FF8A8A8AFF8A8A8AFF8A8A
      8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A
      8AFF000DC7FF000DD6FF000DD6FF000DD6FF000DD6FF000DC7FF696969FF6969
      69FF696969FF696969FFF4D3ABFF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFD4D4D4FF848484FF848484FF848484FFFFFF
      FFFFE0E0E0FF848484FF848484FF848484FF848484FF848484FF848484FF8484
      84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFEA
      CAFFC04800FF000000000000000000000000000000002A4860FF3160A1FF3160
      A1FF7B848FFFE0D4E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0D4E0FFEAEAEAFFD4CA
      D4FF988F98FF988F98FFA198A1FFABABABFFA198A1FF736A73FF736A73FF98AB
      B6FF316A98FF1C507BFF1C507BFF1C507BFF1C507BFF164060FF2A3131FF0000
      0000000000000000000000000000000000000000000000000000844016FFE08F
      58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F
      58FFE08F58FFE08F58FFE08F58FF844016FF844016FFA15816FFA15816FF607B
      B6FF315084FF315084FF23317BFF000000000000000000000000000000000000
      000000000000A25858FFFFF0F0FFFFF0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4
      E9FFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E9FFF4E9DFFFF4E9DFFFF4E9DFFFF4E9
      DFFFF4E9DFFF000DD6FF000DD6FF000DD6FF000DE3FFF4DFBFFFF4DFBFFFF4DF
      BFFFF4DFBFFFF4DFBFFFF4D3ABFF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FFFFFFF4FFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4E0FFFFEACAFFFFEACAFFFFEACAFFFFEACAFFFFEA
      CAFFC04800FF000000000000000000000000000000007B7B84FF23487BFF2348
      7BFF7B7B84FFF4FFF4FFEAEAEAFFE0EAEAFFE0EAEAFFC0D4CAFF989898FF7373
      73FFABA1ABFFABA1ABFFD4CAD4FFA198A1FFABA1ABFF7B7B7BFF7B7B7BFFB6AB
      B6FF6A7B8FFF3873A1FF1C507BFF1C507BFF1C507BFF1C507BFF112A38FF0000
      0000000000000000000000000000000000000000000000000000000000008440
      16FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F
      58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FF844016FFA15816FF607B
      B6FF607BB6FF607BB6FF315084FF23317BFF0000000000000000000000000000
      000000000000A25858FFFFF0F0FFFFF0F0FFD6D6D6FF8A8A8AFF8A8A8AFF8A8A
      8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A
      8AFF000DC7FF000DE3FF000DE3FF000DD6FF000DE3FF000DF0FF696969FF6969
      69FF696969FF696969FFF4D3ABFF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFD4D4D4FF848484FF848484FF848484FFFFFF
      FFFFE0E0E0FF848484FF848484FF848484FF848484FF848484FF848484FF8484
      84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFEA
      CAFFC04800FF00000000000000000000000000000000000000008F98A1FF8F98
      A1FF848484FFF4FFF4FFABEACAFF58C084FF58C084FF236A38FF8F848FFFD4CA
      D4FFB6ABB6FFB6ABB6FF848484FFA1A1A1FFD4CAD4FF7B7B7BFF7B7B7BFFB6B6
      B6FF8F848FFF6A7384FF4073ABFF4073ABFF1C507BFF1C507BFF112A38FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000844016FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F
      58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FF844016FF3150
      84FF607BB6FF607BB6FF607BB6FF315084FF23317BFF00000000000000000000
      000000000000A25858FFFFF0F0FFFFF0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E9FFFFF4E9FFFFF4E9FF000D
      F0FF000DE3FF000DD6FF000DD6FFF4E9DFFFF4E9DFFF000DF0FF000DF0FF000D
      F0FFF4DFBFFFF4DFBFFFF4DFBFFF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FFFFFFF4FFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4E0FFFFEAE0FFFFEAD4FFFFEAD4FFFFEACAFFFFEA
      CAFFC04800FF00000000000000000000000000000000000000008F98A1FF8F98
      A1FF848484FFF4FFF4FFABEACAFF58C084FF58C084FF236A38FF8F848FFFD4CA
      D4FFB6ABB6FFB6ABB6FF848484FFA1A1A1FFD4CAD4FF7B7B7BFF7B7B7BFFB6B6
      B6FF8F848FFF6A7384FF4073ABFF4073ABFF1C507BFF1C507BFF112A38FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000844016FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F
      58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FF844016FF3150
      84FF607BB6FF607BB6FF607BB6FF315084FF23317BFF00000000000000000000
      000000000000A25858FFFFF0F0FFFFF0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E9FFFFF4E9FFFFF4E9FF000D
      F0FF000DE3FF000DD6FF000DD6FFF4E9DFFFF4E9DFFF000DF0FF000DF0FF000D
      F0FFF4DFBFFFF4DFBFFFF4DFBFFF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FFFFFFF4FFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4E0FFFFEAE0FFFFEAD4FFFFEAD4FFFFEACAFFFFEA
      CAFFC04800FF0000000000000000000000000000000000000000000000000000
      0000386038FF50B67BFF238F40FF16581CFF16581CFF405040FFC073C0FF7B6A
      7BFF988F98FF988F98FFCAC0CAFFCAC0CAFFABA1ABFFA198A1FFA198A1FFB6B6
      B6FF988F98FF6A6A6AFFA1ABC0FFA1ABC0FF316A98FF1C507BFF112A38FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000844016FF844016FFE08F58FFE08F58FFE08F58FFE08F58FFE08F
      58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FFE08F58FF2331
      7BFF315084FF315084FF607BB6FF607BB6FF315084FF23317BFF23317BFF0000
      000000000000AE6058FFFFF0F0FFFFF0F0FFD6D6D6FF8A8A8AFF8A8A8AFF8A8A
      8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF000DFFFF000D
      E3FF000DF0FF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF696969FF000DFFFF000D
      FFFF000DF0FF696969FFF4DFBFFF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFE0E0E0FFA1A1A1FFA1A1A1FFA1A1A1FFFFFF
      FFFFE0E0E0FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1
      98FFA1A198FFA1A198FFA19898FFA19898FFA19898FFA19898FFA19898FFFFEA
      CAFFC04800FF0000000000000000000000000000000000000000000000000000
      0000235023FF115016FF384038FF985098FF985098FFB650B6FF841C84FF7B60
      73FFD4C0C0FFD4C0C0FFABA1ABFF847B84FFABA1ABFFD4CAD4FFD4CAD4FFABAB
      ABFFA198A1FF7B7B7BFFC0C0C0FFC0C0C0FF1C3150FF316A98FF112A38FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000023317BFF98C0E0FF98C0E0FF98C0E0FF98C0
      E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0
      E0FF23317BFF23317BFF315084FF607BB6FF607BB6FF23317BFF23317BFF0000
      000000000000AE6058FFFFF0F0FFFFF0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000DF0FF000DF0FF000DF0FF000D
      FFFFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E9FFFFF4
      E9FF000DF0FF000DF0FFF4E9DFFF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFF4FFFFFFF4FFFFF4EAFFFFF4EAFFFFF4EAFFFFF4E0FFFFEA
      E0FFC04800FF0000000000000000000000000000000000000000000000000000
      0000000000007B7B7BFF7B167BFF841C84FF841C84FF602A58FF987B60FFEAAB
      58FFCA7B38FFCA7B38FF8F848FFFD4CAD4FFC0B6C0FF8F8F8FFF8F8F8FFF988F
      98FFD4CAD4FF7B7B7BFFCAC0CAFFCAC0CAFF0B2338FF114073FF2A4860FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000023317BFF98C0E0FF98C0E0FF98C0
      E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0
      E0FF98C0E0FF98C0E0FF23317BFF315084FF607BB6FF23317BFF23317BFF0000
      000000000000AE6058FFFFF0F0FFFFF0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000DF0FF000DF0FF000DF0FF000DF0FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E9FFFFF4E9FFFFF4
      E9FFFFF4E9FFFFF4E9FF000DF0FF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFF4FFFFFFF4FFFFF4EAFFFFF4EAFFFFF4EAFFFFF4E0FFFFEA
      E0FFC04800FF0000000000000000000000000000000000000000000000000000
      00000000000000000000583158FF60232AFF60232AFFEA9850FFF47B2AFFCA31
      1CFF7B4848FF7B4848FF58E0E0FF6A8F8FFF8F848FFFC0B6C0FFC0B6C0FFD4CA
      D4FFB6ABB6FF8F8F8FFFCAC0CAFFCAC0CAFF314860FF315073FF6A737BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023317BFF98C0E0FF98C0
      E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0
      E0FF98C0E0FF98C0E0FF98C0E0FF23317BFF315084FF23317BFF23317BFF0000
      000000000000BA6960FFE37521FFE37521FFE37521FFE37521FFE37521FFE375
      21FFE37521FFE37521FF000DF0FF000DF0FF000DF0FF000DF0FFE37521FFE375
      21FFE37521FFE37521FFE37521FFE37521FFE37521FFE37521FFE37521FFE375
      21FFE37521FFE37521FFE37521FF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFF4FFFFFFF4FFFFF4EAFFFFF4E0FFFFF4E0FFFFF4E0FFFFF4
      E0FFC04800FF0000000000000000000000000000000000000000000000000000
      00000000000000000000583158FF60232AFF60232AFFEA9850FFF47B2AFFCA31
      1CFF7B4848FF7B4848FF58E0E0FF6A8F8FFF8F848FFFC0B6C0FFC0B6C0FFD4CA
      D4FFB6ABB6FF8F8F8FFFCAC0CAFFCAC0CAFF314860FF315073FF6A737BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023317BFF98C0E0FF98C0
      E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0
      E0FF98C0E0FF98C0E0FF98C0E0FF23317BFF315084FF23317BFF23317BFF0000
      000000000000BA6960FFE37521FFE37521FFE37521FFE37521FFE37521FFE375
      21FFE37521FFE37521FF000DF0FF000DF0FF000DF0FF000DF0FFE37521FFE375
      21FFE37521FFE37521FFE37521FFE37521FFE37521FFE37521FFE37521FFE375
      21FFE37521FFE37521FFE37521FF8A4F4FFF8A4F4FFF00000000000000000000
      0000C04800FFC04800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFF4FFFFFFF4FFFFF4EAFFFFF4E0FFFFF4E0FFFFF4E0FFFFF4
      E0FFC04800FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000843131FF843131FFC02316FF7B4048FF40B6
      C0FF2AF4FFFF2AF4FFFF40D4F4FF607B84FFCACACAFFB6ABB6FFB6ABB6FF7B7B
      7BFF989898FFD4CAD4FFC0B6C0FFC0B6C0FF6A6A6AFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023317BFF2331
      7BFF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0
      E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF23317BFF23317BFF23317BFF0000
      000000000000BA6960FFE9B572FFE9B572FFFF8A21FFFF8A21FFFF8A21FFFF8A
      21FFFF8A21FFFF8A21FF000DF0FF000DF0FFFF8A21FFFF8A21FFFF8A21FFFF8A
      21FFFF8A21FFFF8A21FFFF8A21FFFF8A21FFFF8A21FFFF8A21FFFF8A21FFFF8A
      21FFFF8A21FFFF8A21FFFF8A21FF000000000000000000000000000000000000
      0000CA5800FFCA5800FFD46000FFD46000FFD46000FFD46000FFD46000FFD460
      00FFD46000FFD46000FFD46000FFD46000FFD46000FFD46000FFD46000FFD460
      00FFD46000FFD46000FFD46000FFD46000FFD46000FFD46000FFD46000FFD460
      00FFC04800FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7BFF50B6E0FF40D4
      F4FF5084A1FF5084A1FF60847BFF58AB7BFF389860FF7B737BFF7B737BFFD4CA
      D4FFCAC0CAFF989898FF989898FF989898FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000023317BFF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0
      E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF98C0E0FF23317BFF23317BFF0000
      000000000000C77560FFE9B572FFE9B572FFFF8A21FFFF8A21FFFF8A21FFFF8A
      21FFFF8A21FFFF8A21FFFF8A21FF8A4F4FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E08F48FFE08F48FFC04800FFC04800FFC04800FFC04800FFC04800FFC048
      00FFC04800FFC04800FFC04800FFC04800FFC04800FFC04800FFC04800FFC048
      00FFC04800FFC04800FFC04800FFC04800FFC04800FFC04800FFC04800FFC048
      00FFE08F48FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000586A7BFF3148
      38FF50A16AFF50A16AFF31AB58FF167B23FF315831FFB67BB6FFB67BB6FF8F73
      8FFF988F98FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000315084FF23317BFF23317BFF23317BFF23317BFF23317BFF2331
      7BFF23317BFF23317BFF23317BFF23317BFF315084FF00000000000000000000
      000000000000C77560FFE9B572FFE9B572FFE9B572FFE9B572FFE3A258FFE3A2
      58FFE3A258FFFFA138FFFFA138FF8A4F4FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CA5806FFCA5806FFCA5806FFCA5806FFCA5806FFCA58
      06FFCA5806FFCA5806FFCA5806FFCA5806FFCA5806FFCA5806FFCA5806FFCA58
      06FFCA5806FFCA5806FFCA5806FFCA5806FFCA5806FFCA5806FFCA5803FFCA60
      11FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004060
      40FF116A16FF116A16FF315031FF8F608FFFC058C0FF982A98FF982A98FF7348
      73FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7A295FFC7A295FFC7A295FFC7A295FFC7A295FFC7A2
      95FFC7A295FFC7A295FFC7A295FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004060
      40FF116A16FF116A16FF315031FF8F608FFFC058C0FF982A98FF982A98FF7348
      73FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7A295FFC7A295FFC7A295FFC7A295FFC7A295FFC7A2
      95FFC7A295FFC7A295FFC7A295FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7BFF7B7B7BFF6A166AFF982A98FF601660FF7B6A7BFF7B6A7BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7BFF393939FF6363
      63FF636363FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000737373FF737373FF7373
      73FF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7BFF8C8C8CFFD6D6D6FF8484
      84FF848484FF4A4A4AFF313131FF393939FF393939FF393939FF636363FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000505050FF8F8F8FFF8F8F8FFF9898
      98FF989898FF8F8F8FFF505050FF505050FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7BFF8C8C8CFFD6D6D6FF8484
      84FF848484FF4A4A4AFF313131FF393939FF393939FF393939FF636363FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000505050FF8F8F8FFF8F8F8FFF9898
      98FF989898FF8F8F8FFF505050FF505050FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7BFF848484FF848484FF9C9C9CFF9C9C9CFFD6D6D6FFB5B5
      B5FFB5B5B5FFADADADFFB5B5B5FF848484FF4A4A4AFF4A4A4AFF313131FF3131
      31FF393939FF6B6B6BFF6B6B6BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000505050FF8F8F8FFF6A6A6AFF6A6A6AFF0000
      000000000000B6B6B6FF7B7B7BFF7B7B7BFF404040FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000697272FF697272FF697272FF6972
      72FF697272FF00000000697272FF697272FF697272FF697272FF303030FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6BFF6B6B
      6BFF4A4A4AFF4A4A4AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000737373FFB5B5B5FFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFD6D6D6FFB5B5
      B5FFB5B5B5FF9C9C9CFFBDBDBDFFEFEFEFFFBDBDBDFFBDBDBDFF8C8C8CFF5252
      52FF393939FF393939FF393939FF4A4A4AFF636363FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000737373FF848484FF6A6A6AFF00000000000000000000
      00000000000000000000B6B6B6FFB6B6B6FF7B7B7BFF404040FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000697272FFE9E9E9FFE9E9E9FFC9B5
      B5FFC9B5B5FF504848FFD3B5B5FFD3B5B5FFD3B5B5FFFFDFDFFF303030FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9CFF6B6B6BFF6B6B6BFFB5B5B5FFB5B5
      B5FFA5A5A5FF5A5A5AFF393939FF525252FF525252FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000737373FFB5B5B5FFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFD6D6D6FFB5B5
      B5FFB5B5B5FFADADADFFD6D6D6FFF7F7F7FFCECECEFFCECECEFFFFFFFFFFEFEF
      EFFF8C8C8CFF7B7B7BFF7B7B7BFF4A4A4AFF393939FF393939FF4A4A4AFF4A4A
      4AFF6B6B6BFF0000000000000000000000000000000000000000000000000000
      00000000000000000000848484FF404040FF0000000000000000000000000000
      00000000000000000000989898FF989898FFB6B6B6FF6A6A6AFF404040FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000697272FF3F3838FF3F3838FF7260
      60FF726060FFFFDFDFFF3F3838FF3F3838FF3F3838FF38302AFF503F38FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9CFF9C9C9CFF6B6B6BFFCECECEFF84CE9CFF9CCEADFF9CCE
      ADFFB5B5B5FF847B7BFF847373FF635252FF635252FF393939FF5A5A5AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000737373FFB5B5B5FFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFD6D6D6FFB5B5
      B5FFB5B5B5FFADADADFFD6D6D6FFF7F7F7FFCECECEFFCECECEFFFFFFFFFFEFEF
      EFFF8C8C8CFF7B7B7BFF7B7B7BFF4A4A4AFF393939FF393939FF4A4A4AFF4A4A
      4AFF6B6B6BFF0000000000000000000000000000000000000000000000000000
      00000000000000000000848484FF484848FF0000000000000000000000000000
      0000A1A1A1FF848484FF848484FF848484FF505050FFA1A1A1FF7B7B7BFF4040
      40FF404040FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000697272FF3F3838FF3F3838FF7260
      60FF726060FFFFDFDFFF3F3838FF3F3838FF3F3838FF38302AFF503F38FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9CFF9C9C9CFF6B6B6BFFCECECEFF84CE9CFF9CCEADFF9CCE
      ADFFB5B5B5FF847B7BFF847373FF635252FF635252FF393939FF5A5A5AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000737373FFB5B5B5FFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFD6D6D6FFB5B5
      B5FFB5B5B5FF9C9C9CFFBDBDBDFFF7F7F7FFB5B5B5FFB5B5B5FFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFA5A5A5FF8C8C8CFF737373FF5A5A5AFF5A5A
      5AFF4A4A4AFF4A4A4AFF4A4A4AFF6B6B6BFF6B6B6BFF00000000000000000000
      00000000000000000000848484FF484848FF0000000000000000000000000000
      0000A1A1A1FF848484FF848484FF848484FF505050FFA1A1A1FF7B7B7BFF4040
      40FF404040FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C96700FFC96700FFC96700FFC967
      00FFC96700FFC96700FFC96700FFC96700FFC96700FFC96700FFC96700FFC967
      00FFC96700FFC96700FFC96700FFC96700FFC96700FFC96700FFC96700FF6058
      50FF605850FFD38484FF221610FF221610FF221610FF58483FFFC96700FFC967
      00FFC96700FF0000000000000000000000008C8C8CFF8C8C8CFF6B6B6BFF5A5A
      5AFF525252FF4A4A4AFF4A4A4AFFA5A5A5FFEFEFEFFFADCEB5FFB5CEBDFFB5CE
      BDFFB5B5B5FF8C8484FF8C8484FFA57B7BFFA57B7BFF9C7373FF6B5252FF3939
      39FF636363FF636363FF00000000000000000000000000000000000000000000
      0000737373FFB5B5B5FFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFD6D6D6FFB5B5
      B5FFB5B5B5FFA5A5A5FFD6D6D6FFF7F7F7FFADADADFFADADADFFEFEFEFFFA5A5
      A5FF848484FF737373FF737373FF6B6B6BFF6B6B6BFF848484FFB5B5B5FFB5B5
      B5FFADADADFF848484FF5A5A5AFF393939FF393939FF00000000000000000000
      00000000000000000000848484FF404040FF0000000000000000000000007B7B
      7BFF505050FF484848FF585858FF585858FF606060FF404040FF989898FF7373
      73FF737373FF404040FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000C96700FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF605850FFD38484FF221610FF221610FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF8C8C8CFF636363FF7B7B7BFF7B7B7BFF636363FF5252
      52FF5A5A5AFF8C8C8CFF8C8C8CFFD6D6D6FFDEDEDEFFD6D6D6FFCECECEFFCECE
      CEFFBDBDBDFFADADADFFA59C9CFFA58484FFA58484FFAD8484FFB58484FFA573
      73FF634A4AFF634A4AFF393939FF636363FF0000000000000000000000000000
      0000737373FFB5B5B5FFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFD6D6D6FFB5B5
      B5FFB5B5B5FFA5A5A5FFCECECEFFF7F7F7FFADADADFFADADADFFB5B5B5FF8C8C
      8CFF6B6B6BFF4A4A4AFF4A4A4AFF393939FF393939FF525252FF7B7B7BFF7B7B
      7BFFEFEFEFFFD6D6D6FFD6D6D6FF4A4A4AFF4A4A4AFF4A4A4AFF000000000000
      00000000000000000000737373FF848484FF8F8F8FFFA1A1A1FFA1A1A1FF7373
      73FFA1A1A1FF505050FF6A6A6AFF6A6A6AFFB6B6B6FFA1A1A1FF484848FFABAB
      ABFFABABABFF6A6A6AFF404040FF000000000000000000000000000000000000
      000000000000000000000000000000000000C96700FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF696060FFD38E8EFF38302AFF38302AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF7B7B7BFFCECECEFFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
      D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6CEBDFFDECEBDFFDECE
      BDFFEFEFD6FFDED6D6FFB5ADADFFA59C9CFFA59C9CFFA58C8CFFAD8484FFBD84
      84FFCE8484FFCE8484FFB57373FF6B4A4AFF393131FF6B6B6BFF6B6B6BFF0000
      0000737373FFB5B5B5FFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFD6D6D6FFB5B5
      B5FFB5B5B5FFA5A5A5FFD6D6D6FFF7F7F7FFADADADFFADADADFFADADADFF7373
      73FF393939FF393939FF393939FF393939FF393939FF313131FF4A4A4AFF4A4A
      4AFF8C8C8CFFCECECEFFD6D6D6FF6B6B6BFF6B6B6BFF4A4A4AFF000000000000
      0000737373FF737373FF6A6A6AFFABABABFF737373FF606060FF606060FF7373
      73FFB6B6B6FF8F8F8FFF0000000000000000737373FFCACACAFF848484FF4848
      48FF484848FFC0C0C0FF606060FF404040FF0000000000000000000000000000
      000000000000000000000000000000000000C96700FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF696060FFD38E8EFF483838FF483838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF9C9C9CFFCECECEFFCECECEFFCECECEFFD6D6D6FFDEDE
      DEFFDEDEDEFFDED6D6FFDED6D6FFDEDEDEFFDEDED6FFF7CE9CFFFFD6ADFFFFD6
      ADFFFFF7EFFFFFF7EFFFFFCE9CFFEFB584FFEFB584FFB59C84FF8C8484FF9C84
      84FFB57B7BFFB57B7BFFD68484FFDE8484FFCE7373FF734A4AFF734A4AFF3939
      39FF737373FFB5B5B5FFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFD6D6D6FFB5B5
      B5FFB5B5B5FFA5A5A5FFD6D6D6FFF7F7F7FFADADADFFADADADFFADADADFF7373
      73FF393939FF393939FF393939FF393939FF393939FF313131FF4A4A4AFF4A4A
      4AFF8C8C8CFFCECECEFFD6D6D6FF6B6B6BFF6B6B6BFF4A4A4AFF000000000000
      00000000000000000000ABABABFF737373FF989898FF6A6A6AFF6A6A6AFF4040
      40FFABABABFF6A6A6AFF000000000000000000000000737373FFA1A1A1FF7373
      73FF737373FF484848FFB6B6B6FF737373FF404040FF404040FF000000000000
      000000000000000000000000000000000000C96700FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF696060FFD38E8EFF483838FF483838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF9C9C9CFFCECECEFFCECECEFFCECECEFFD6D6D6FFDEDE
      DEFFDEDEDEFFDED6D6FFDED6D6FFDEDEDEFFDEDED6FFF7CE9CFFFFD6ADFFFFD6
      ADFFFFF7EFFFFFF7EFFFFFCE9CFFEFB584FFEFB584FFB59C84FF8C8484FF9C84
      84FFB57B7BFFB57B7BFFD68484FFDE8484FFCE7373FF734A4AFF734A4AFF3939
      39FF737373FFB5B5B5FFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFD6D6D6FFB5B5
      B5FFB5B5B5FFA5A5A5FFCECECEFFF7F7F7FFADADADFFADADADFFA5A5A5FF6363
      63FF393939FF313131FF313131FF313131FF393131FF313131FF393939FF3939
      39FF6B6B6BFFB5B5B5FFCECECEFF737373FF737373FF4A4A4AFF000000000000
      00000000000000000000ABABABFF737373FF989898FF6A6A6AFF6A6A6AFF4040
      40FFABABABFF6A6A6AFF000000000000000000000000737373FFA1A1A1FF7373
      73FF737373FF484848FFB6B6B6FF737373FF404040FF404040FF000000000000
      000000000000000000000000000000000000C96700FFFFFFFFFFDFDFDFFFDFDF
      DFFF840000FF840000FF840000FF480000FF480000FFFFFFFFFF840000FF8400
      00FF840000FF840000FF480000FFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF696060FFD38E8EFF483838FF483838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF8C8C8CFFDEDEDEFFEFEFEFFFEFEFEFFFEFEFDEFFF7D6
      BDFFEFCEA5FFEFD6B5FFEFD6B5FFFFF7EFFFF7EFDEFFF7CE9CFFFFD6ADFFFFD6
      ADFFFFF7EFFFFFF7EFFFFFCE9CFFFFB57BFFFFB57BFFEFA563FFDE8C52FFAD84
      5AFF84736BFF84736BFF847373FFB57373FFDE7B7BFFF77B7BFFF77B7BFF8C52
      52FF737373FFCECECEFFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFD6D6D6FFB5B5
      B5FFB5B5B5FFA5A5A5FFCECECEFFF7F7F7FFADADADFFADADADFFA5A5A5FF6363
      63FF313131FF393131FF393131FF9C3900FF9C3900FF393929FF393939FF3939
      39FF4A4A4AFFADADADFFBDBDBDFF6B6B6BFF6B6B6BFF4A4A4AFF000000000000
      0000000000000000000000000000ABABABFF848484FF989898FF989898FF5050
      50FF737373FFB6B6B6FF8F8F8FFF8F8F8FFF0000000000000000848484FFA1A1
      A1FFA1A1A1FF737373FF505050FFABABABFF7B7B7BFF7B7B7BFF404040FF0000
      000000000000000000000000000000000000C96700FFFFFFFFFF840000FF8400
      00FF480000FFFFFFFFFF840000FF480000FF480000FFFFFFFFFF840000FF4800
      00FFFFFFFFFFFFFFFFFF840000FF480000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF696060FFD39898FF483838FF483838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF00000000000000008C8C8CFF8C8C8CFFB5ADA5FFD6AD
      8CFFDEB58CFFDECEADFFDECEADFFFFF7EFFFF7EFDEFFF7CE9CFFFFD6ADFFFFD6
      ADFFFFF7EFFFFFF7EFFFFFCE9CFFFFB57BFFFFB57BFFF7A563FFEF9C4AFFDE84
      31FFCE7329FFCE7329FFAD6B29FF846339FF7B635AFFAD6B6BFFAD6B6BFF8C52
      52FF737373FFCECECEFFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFD6D6D6FFB5B5
      B5FFB5B5B5FFA5A5A5FFCECECEFFF7F7F7FFADADADFFADADADFFADADADFF6363
      63FF313131FF393939FF393939FFBD6300FFBD6300FF5A3929FF393939FF3939
      39FF4A4A4AFFADADADFFBDBDBDFF6B6B6BFF6B6B6BFF4A4A4AFF000000000000
      000000000000000000000000000000000000ABABABFF7B7B7BFF7B7B7BFFB6B6
      B6FF404040FF848484FFA1A1A1FFA1A1A1FF7B7B7BFF00000000000000007B7B
      7BFF7B7B7BFFC0C0C0FF6A6A6AFF505050FFC0C0C0FFC0C0C0FF737373FF0000
      000000000000000000000000000000000000C96700FFFFFFFFFFBFBFBFFFBFBF
      BFFF840000FF840000FF840000FF480000FF480000FFFFFFFFFF840000FF4800
      00FFFFFFFFFFFFFFFFFF840000FF480000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF696060FFD3A1A1FF483838FF483838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF00000000000000000000000000000000000000009C9C
      9CFF9C9C8CFFADADA5FFADADA5FFADADADFFD6CEBDFFDEBD9CFFFFD6A5FFFFD6
      A5FFFFF7EFFFFFF7EFFFFFCE9CFFFFB57BFFFFB57BFFF7A563FFEF9C4AFFDE84
      31FFCE7321FFCE7321FFB56318FF845221FF5A4A39FF5A4A4AFF5A4A4AFF6B39
      39FF737373FFCECECEFFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFD6D6D6FFB5B5
      B5FFB5B5B5FFA5A5A5FFCECECEFFF7F7F7FFADADADFFADADADFFADADADFF6363
      63FF313131FF393939FF393939FFBD6300FFBD6300FF5A3929FF393939FF3939
      39FF4A4A4AFFADADADFFBDBDBDFF6B6B6BFF6B6B6BFF4A4A4AFF000000000000
      00000000000000000000000000000000000000000000ABABABFFABABABFF6A6A
      6AFFB6B6B6FF484848FF7B7B7BFF7B7B7BFF989898FF737373FF000000000000
      0000000000007B7B7BFFCACACAFF6A6A6AFF585858FF585858FF000000000000
      000000000000000000000000000000000000C96700FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF840000FF480000FF480000FFFFFFFFFF840000FF4800
      00FFFFFFFFFFFFFFFFFF840000FF480000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF696060FFD3A1A1FF483838FF483838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF00000000000000000000000000000000000000000000
      0000000000009C9C9CFF9C9C9CFF8C8C8CFF848484FF8C8484FFA59C8CFFA59C
      8CFFB5B5ADFFEFDECEFFF7CE9CFFFFB573FFFFB573FFEFA563FFBD844AFF8C63
      39FF635239FF635239FF4A3939FF634A4AFFA56363FFDE7B7BFFDE7B7BFFAD63
      63FF737373FFCECECEFFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFCECECEFFBDBD
      BDFFBDBDBDFFA5A5A5FFCECECEFFF7F7F7FFADADADFFADADADFFB5B5B5FF6B6B
      6BFF393939FF393939FF393939FF634A29FF7B5229FF393929FF4A4A4AFF4A4A
      4AFF525252FFB5B5B5FFB5B5B5FF6B6B6BFF6B6B6BFF4A4A4AFF000000000000
      000000000000000000000000000000000000000000000000000000000000ABAB
      ABFF848484FFA1A1A1FF505050FF505050FF848484FFA1A1A1FF848484FF0000
      000000000000000000008F8F8FFFB6B6B6FF6A6A6AFF6A6A6AFF404040FF0000
      000000000000000000000000000000000000C96700FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF840000FF480000FF480000FFFFFFFFFF840000FF4800
      00FFFFFFFFFFFFFFFFFF840000FF480000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF696060FFD3A1A1FF483838FF483838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF00000000000000000000000000000000000000000000
      0000000000009C9C9CFF9C9C9CFF8C8C8CFF848484FF8C8484FFA59C8CFFA59C
      8CFFB5B5ADFFEFDECEFFF7CE9CFFFFB573FFFFB573FFEFA563FFBD844AFF8C63
      39FF635239FF635239FF4A3939FF634A4AFFA56363FFDE7B7BFFDE7B7BFFAD63
      63FF737373FFCECECEFFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFCECECEFFBDBD
      BDFFBDBDBDFFA5A5A5FFCECECEFFF7F7F7FFADADADFFADADADFFCECECEFF8484
      84FF525252FF393939FF393939FF313131FF313131FF393939FF4A4A4AFF4A4A
      4AFF6B6B6BFFB5B5B5FFADADADFF636363FF636363FF4A4A4AFF000000000000
      000000000000000000000000000000000000000000000000000000000000ABAB
      ABFF848484FFA1A1A1FF505050FF505050FF848484FFA1A1A1FF848484FF0000
      000000000000000000008F8F8FFFB6B6B6FF6A6A6AFF6A6A6AFF404040FF0000
      000000000000000000000000000000000000C96700FFFFFFFFFFFFFFFFFFFFFF
      FFFF840000FF840000FF480000FFBFBFBFFFBFBFBFFFFFFFFFFF840000FF8400
      00FF840000FF840000FF480000FFC9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF696960FFD3A1A1FF483838FF483838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8CFF8C8C
      8CFF8C8C8CFF6B6B6BFF847B73FF8C7363FF8C7363FF52524AFF313131FF3931
      31FF735252FF735252FFB57373FFD68484FFAD6B6BFF9C7373FF9C7373FF0000
      0000737373FFCECECEFFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFD6D6D6FFBDBD
      BDFFBDBDBDFFADADADFFD6D6D6FFF7F7F7FF9C9C9CFF9C9C9CFFBDBDBDFFEFEF
      EFFF7B7B7BFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF393939FF525252FF5252
      52FFADADADFFB5B5B5FFADADADFF636363FF636363FF4A4A4AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ABABABFF8F8F8FFFA1A1A1FFA1A1A1FF404040FF848484FFA1A1A1FF8484
      84FF848484FF0000000000000000989898FFB6B6B6FFB6B6B6FF8F8F8FFF4040
      40FF00000000000000000000000000000000C96700FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF840000FF4800
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF696969FFD3ABABFF483838FF483838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000636363FF313131FF181818FF212121FF212121FF4A3939FF846363FFB57B
      7BFFB57B7BFFB57B7BFF8C6B6BFF847373FF0000000000000000000000000000
      0000737373FFCECECEFFB5B5B5FFB5B5B5FFDEDEDEFFA5A5A5FFD6D6D6FFBDBD
      BDFFBDBDBDFFADADADFFD6D6D6FFF7F7F7FF9C9C9CFF9C9C9CFFBDBDBDFFEFEF
      EFFF7B7B7BFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF393939FF525252FF5252
      52FFADADADFFB5B5B5FFADADADFF636363FF636363FF4A4A4AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ABABABFF848484FF848484FFC0C0C0FF313131FF848484FF9898
      98FF989898FF7B7B7BFF00000000000000007B7B7BFF7B7B7BFFCACACAFF8484
      84FF404040FF000000000000000000000000C96700FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF840000FF4800
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF696969FFD3ABABFF483838FF483838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF00000000000000000000000000000000000000000000
      0000000000000000000000000000848484FF5A5A5AFF313131FF212121FF2121
      21FF313131FF4A4A4AFF5A5A5AFF8C7373FF8C7373FFA57B7BFFA57B7BFF7B6B
      6BFF7B6B6BFF7B6B6BFF00000000000000000000000000000000000000000000
      0000737373FFDEDEDEFFCECECEFFCECECEFFBDBDBDFF9C9C9CFFD6D6D6FFB5B5
      B5FFB5B5B5FF8C8C8CFFADADADFFA5A5A5FF9C9C9CFF9C9C9CFFADADADFFCECE
      CEFFEFEFEFFF8C8C8CFF8C8C8CFF6B6B6BFF636363FF737373FFADADADFFADAD
      ADFFEFEFEFFFADADADFFA5A5A5FF636363FF636363FF4A4A4AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6B6B6FFB6B6B6FF848484FFC0C0C0FF404040FF8F8F
      8FFF8F8F8FFF848484FF000000000000000000000000000000007B7B7BFFCACA
      CAFF8F8F8FFF585858FF585858FF00000000C96700FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF696969FFD3ABABFF3F3830FF3F3830FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF00000000000000000000000000000000000000007B7B
      7BFF525252FF393939FF393939FF393939FF525252FF737373FFA5A5A5FFA5A5
      A5FFB5B5B5FFBDBDBDFFB5B5B5FF7B7373FF7B7373FF736B6BFF736B6BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000737373FFADADADFFB5B5B5FFB5B5B5FFCECECEFFD6D6D6FFF7F7F7FFBDBD
      BDFFBDBDBDFF7B7B7BFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFFA5A5
      A5FFBDBDBDFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCECECEFFEFEFEFFFEFEF
      EFFFADADADFF9C9C9CFF9C9C9CFF5A5A5AFF5A5A5AFF4A4A4AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6B6B6FF8F8F8FFFABABABFF5858
      58FF585858FF0000000000000000000000000000000000000000000000007B7B
      7BFFABABABFF8F8F8FFF8F8F8FFF00000000C96700FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF696969FFD3ABABFF3F3830FF3F3830FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF00000000000000000000000000000000000000007B7B
      7BFF525252FF393939FF393939FF393939FF525252FF737373FFA5A5A5FFA5A5
      A5FFB5B5B5FFBDBDBDFFB5B5B5FF7B7373FF7B7373FF736B6BFF736B6BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000737373FFDEDEDEFFDEDEDEFFDEDEDEFFF7F7F7FFF7F7F7FFADADADFF8C8C
      8CFF8C8C8CFF636363FF6B6B6BFF848484FF8C8C8CFF8C8C8CFF8C8C8CFF8C8C
      8CFF737373FF737373FF737373FF8C8C8CFFA5A5A5FF737373FF636363FF6363
      63FF5A5A5AFF6B6B6BFF7B7B7BFF5A5A5AFF5A5A5AFF4A4A4AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6B6B6FF8F8F8FFFABABABFF5858
      58FF585858FF0000000000000000000000000000000000000000000000007B7B
      7BFFABABABFF8F8F8FFF8F8F8FFF00000000C96700FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF696060FFD3B5B5FF302A22FF302A22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC96700FF00000000000000007B7B7BFF7B7B7BFF525252FF5A5A
      5AFF848484FFADADADFFADADADFFCECECEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDE
      DEFFDEDEDEFFCECECEFF8C8C8CFF737373FF737373FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7BFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDEFF737373FF8C8C8CFFB5B5
      B5FFB5B5B5FFADADADFF737373FF6B6B6BFFADADADFFADADADFF9C9C9CFF8C8C
      8CFF737373FF636363FF636363FF737373FF848484FF525252FF4A4A4AFF4A4A
      4AFF4A4A4AFF525252FF636363FF525252FF525252FF4A4A4AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1FF989898FFB6B6
      B6FFB6B6B6FF404040FF0000000000000000000000000000000000000000A1A1
      A1FF8F8F8FFF737373FF737373FF00000000C96700FFC96700FFC96700FFC967
      00FFC96700FFC96700FFC96700FFC96700FFC96700FFC96700FFC96700FFC967
      00FFC96700FFC96700FFC96700FFC96700FFC96700FFC96700FFC96700FF6960
      60FF696060FFD3B5B5FF302A22FF302A22FF302A22FFC96700FFC96700FFC967
      00FFC96700FF000000000000000000000000848484FF848484FFDEDEDEFFF7F7
      F7FFF7F7F7FFEFD6D6FFEFD6D6FFDEADADFFDED6D6FFDEDEDEFFBDBDBDFFBDBD
      BDFF848484FF8C8C8CFF9C9C9CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7BFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDEFF737373FF8C8C8CFFB5B5
      B5FFB5B5B5FFADADADFF737373FF6B6B6BFFADADADFFADADADFF9C9C9CFF8C8C
      8CFF737373FF636363FF636363FF737373FF848484FF525252FF4A4A4AFF4A4A
      4AFF4A4A4AFF525252FF636363FF525252FF525252FF4A4A4AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABABABFFA1A1
      A1FFA1A1A1FFD4E0E0FF404040FF00000000000000000000000000000000B6B6
      B6FF989898FF737373FF737373FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000697272FF3F3838FF3F3838FF7B72
      72FF7B7272FFFFDFDFFF3F3838FF3F3838FF3F3838FF38302AFF503F38FF0000
      0000000000000000000000000000000000009C9C9CFF9C9C9CFF8C8C8CFF8C8C
      8CFF8C8C8CFF8C5252FF8C5252FF9C5252FFA57373FF847B7BFF8C8C8CFF8C8C
      8CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848484FF848484FF848484FF8C8C8CFF9C9C9CFFA5A5A5FFB5B5
      B5FFB5B5B5FFBDBDBDFFBDBDBDFFCECECEFFDEDEDEFFDEDEDEFFDEDEDEFFD6D6
      D6FFCECECEFFB5B5B5FFB5B5B5FFA5A5A5FF9C9C9CFF737373FF4A4A4AFF4A4A
      4AFF393939FF313131FF525252FF4A4A4AFF4A4A4AFF4A4A4AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ABAB
      ABFFABABABFFA1A1A1FFD4E0E0FF7B7B7BFFA1A1A1FFA1A1A1FFABABABFF9898
      98FF737373FF8F8F8FFF8F8F8FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000697272FFE9E9E9FFE9E9E9FFC9B5
      B5FFC9B5B5FF504848FFD3B5B5FFD3B5B5FFD3B5B5FFFFDFDFFF303030FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848484FF848484FF9C9C9CFFBDBDBDFFBDBDBDFFDEDEDEFFEFEF
      EFFFBDBDBDFF7B7B7BFF7B7B7BFF5A5A5AFF5A5A5AFF6B6B6BFF737373FF7373
      73FF848484FF9C9C9CFF737373FF4A4A4AFF4A4A4AFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000989898FFABABABFFC0C0C0FF989898FF989898FF848484FF8484
      84FF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000697272FFE9E9E9FFE9E9E9FFC9B5
      B5FFC9B5B5FF504848FFD3B5B5FFD3B5B5FFD3B5B5FFFFDFDFFF303030FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8CFF8484
      84FF7B7B7BFF737373FF737373FF737373FF6B6B6BFF6B6B6BFF737373FF7373
      73FF7B7B7BFF848484FF4A4A4AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000989898FFABABABFFC0C0C0FF989898FF989898FF848484FF8484
      84FF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000697272FF7B7272FF7B7272FF7B72
      72FF7B7272FF000000007B7272FF7B7272FF7B7272FF7B7272FF303030FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8CFF8484
      84FF7B7B7BFF737373FF737373FF737373FF6B6B6BFF6B6B6BFF737373FF7373
      73FF7B7B7BFF848484FF4A4A4AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000989898FFB6B6B6FFA1A1A1FFA1A1A1FF989898FF7373
      73FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BF8484FFB57B7BFFB57B7BFFB57B7BFFB57B
      7BFFB57B7BFFB57B7BFFB57B7BFFB57B7BFFB57B7BFFB57B7BFFB57B7BFFB57B
      7BFFB57B7BFFB57B7BFFB57B7BFFB57B7BFFB57B7BFFB57B7BFFB57B7BFFB57B
      7BFFB57B7BFFB57B7BFFB57B7BFFB57B7BFFB57B7BFFB57B7BFFB57B7BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BF8484FFBF8484FFD39884FFD39884FFFFC984FFFFC9
      84FFFFC984FFFFC984FFFFC984FFFFC984FFFFC984FFFFC984FFFFC984FFFFC9
      84FFFFC984FFFFC984FFFFC984FFFFC984FFFFC984FFFFC984FFFFC984FFFFC9
      84FFFFC984FFFFC984FFFFC984FFFFC984FFC98E84FFBF7B84FFBF7B84FFB57B
      7BFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000989898FFC0B6C0FF989898FF989898FF848484FF00000000000000009898
      98FF989898FFCACACAFFD4CACAFFABABABFF989898FF989898FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BF8484FFBF8484FFD39884FFD39884FFFFC984FFFFC9
      84FFFFC984FFFFC984FFFFC984FFFFC984FFFFC984FFFFC984FFFFC984FFFFC9
      84FFFFC984FFFFC984FFFFC984FFFFC984FFFFC984FFFFC984FFFFC984FFFFC9
      84FFFFC984FFFFC984FFFFC984FFFFC984FFC98E84FFBF7B84FFBF7B84FFB57B
      7BFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000989898FFC0B6C0FF989898FF989898FF848484FF00000000000000009898
      98FF989898FFCACACAFFD4CACAFFABABABFF989898FF989898FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BF8484FFD39884FFBF8484FFBF8484FFDFAB8EFFFFC9
      98FFFFC998FFFFC998FFFFC998FFFFC998FFFFC998FFFFC998FFFFC998FFFFC9
      98FFFFC998FFFFC998FFFFC998FFFFC998FFFFC998FFFFC998FFFFC998FFFFC9
      98FFFFC998FFFFC998FFFFC998FFDFA18EFFBF8484FFC98E84FFC98E84FFB57B
      7BFF000000000000000000000000000000000000000000000000000000000000
      0000808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF808080FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000989898FF989898FFB6B6
      B6FFF4F4F4FFF4F4F4FFABABABFFABABABFF989898FF404040FF484848FF6A6A
      6AFF6A6A6AFF989898FFC0B6B6FFE0D4D4FFE0E0E0FFE0E0E0FFCACACAFFA1A1
      A1FF000000000000000000000000000000000000000000000000399CFFFF399C
      FFFF0052BDFF00399CFF004AADFF004AADFF004AADFF004AADFF004AADFF004A
      ADFF004AADFF004AADFF004AA5FF004AA5FF004AADFF004AA5FF004AA5FF004A
      ADFF004AA5FF00399CFF004AA5FF004AA5FF399CFFFF00000000000000000000
      00000000000000000000B57B7BFFDFAB8EFFDFA184FFDFA184FFBF8484FFE9BF
      A1FFF4D3ABFFF4C9A1FFF4C9A1FFF4C9A1FFF4C9A1FFF4C9A1FFF4C9A1FFF4C9
      A1FFF4C9A1FFF4C9A1FFF4C9A1FFF4C9A1FFF4C9A1FFF4C9A1FFF4C9A1FFF4C9
      A1FFF4D3ABFFF4D3ABFFE9BFA1FFBF8484FFDFAB8EFFDFAB8EFFDFAB8EFFB57B
      7BFF000000000000000000000000000000000000000000000000000000008080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF000000000000000000000000000000000000
      0000000000000000000000000000989898FFABA1A1FFE0E0E0FFE0E0E0FFFFFF
      FFFFFFFFFFFFEAEAEAFFABA1A1FFABA1A1FFA19898FF313131FF111111FF1C1C
      1CFF1C1C1CFF2A2A2AFF484848FF6A6A6AFF989898FF989898FFC0C0C0FFE0E0
      E0FFD4D4D4FF988F8FFF988F8FFF0000000000000000000000000063DEFF0063
      DEFF0063DEFF006BEFFF006BF7FF006BF7FF006BF7FF006BF7FF006BF7FF006B
      F7FF006BF7FF006BF7FF006BEFFF006BF7FF006BEFFF006BEFFF006BEFFF0063
      DEFF0063D6FF005ACEFF0052B5FF0052B5FF004AADFF00000000000000000000
      00000000000000000000B57B7BFFDFAB98FFF4C9A1FFF4C9A1FFC98E7BFFC998
      98FFF4D3B5FFF4D3B5FFF4D3B5FFF4D3B5FFF4D3B5FFF4D3B5FFF4D3B5FFF4D3
      B5FFF4D3B5FFF4D3B5FFF4D3B5FFF4D3B5FFF4D3B5FFF4D3B5FFF4D3B5FFF4D3
      B5FFF4C9B5FFF4C9B5FFBF8484FFC98E84FFF4D3ABFFD3ABA1FFD3ABA1FFB57B
      7BFF0000000000000000000000000000000000000000808080FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF8080
      80FF808080FF808080FF808080FF808080FF808080FF00000000000000000000
      00000000000000000000989898FFD4D4D4FFFFFFFFFFFFF4F4FFFFF4F4FFF4F4
      F4FFFFF4F4FFEAEAEAFFA1A1A1FFA1A1A1FFA1A1A1FF847B84FF505050FF3131
      31FF313131FF1C1C1CFF161616FF1C1C1CFF2A2A2AFF2A2A2AFF484848FF7373
      73FF8F8F8FFF00000000000000000000000000000000000000000063D6FF0063
      D6FF0073FFFF087BFFFF087BFFFF087BFFFF087BFFFF087BFFFF087BFFFF087B
      FFFF0073FFFF0073FFFF087BFFFF087BFFFF0073FFFF0073FFFF0073FFFF0073
      FFFF006BF7FF0063DEFF0063D6FF0063D6FF00399CFF00000000000000000000
      00000000000000000000B57B7BFFD3ABA1FFF4DFB5FFF4DFB5FFF4B58EFFBF84
      7BFFDFB5ABFFF4DFC9FFF4DFC9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3
      C9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3C9FFF4DF
      C9FFD3ABA1FFD3ABA1FFBF7B7BFFE9BFA1FFF4DFC9FFD3ABA1FFD3ABA1FFB57B
      7BFF0000000000000000000000000000000000000000000000FF000000FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000
      00FF808080FF808080FF808080FF808080FF808080FF808080FF000000008F8F
      8FFFC0C0C0FFC0C0C0FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFE0E0
      E0FFB6B6B6FF989898FF848484FF848484FF8F8F8FFF989898FFA1A1A1FFA198
      98FFA19898FF848484FF606060FF404040FF232323FF232323FF161616FF2A2A
      2AFF8F8484FF00000000000000000000000000000000000000000063D6FF0063
      D6FF0073FFFF087BFFFF087BFFFF087BFFFF087BFFFF087BFFFF087BFFFF087B
      FFFF0073FFFF0073FFFF087BFFFF087BFFFF0073FFFF0073FFFF0073FFFF0073
      FFFF006BF7FF0063DEFF0063D6FF0063D6FF00399CFF00000000000000000000
      00000000000000000000B57B7BFFD3ABA1FFF4DFB5FFF4DFB5FFF4B58EFFBF84
      7BFFDFB5ABFFF4DFC9FFF4DFC9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3
      C9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3C9FFF4DF
      C9FFD3ABA1FFD3ABA1FFBF7B7BFFE9BFA1FFF4DFC9FFD3ABA1FFD3ABA1FFB57B
      7BFF0000000000000000000000000000000000000000000000FFC0C0C0FFFFFF
      FFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF000000FF808080FF808080FF808080FF808080FF808080FF000000008F8F
      8FFFC0C0C0FFC0C0C0FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFE0E0
      E0FFB6B6B6FF989898FF848484FF848484FF8F8F8FFF989898FFA1A1A1FFA198
      98FFA19898FF848484FF606060FF404040FF232323FF232323FF161616FF2A2A
      2AFF8F8484FF0000000000000000000000000000000000000000006BEFFF006B
      EFFF0073FFFF087BFFFF1084FFFF1084FFFF1084FFFF188CFFFF1084FFFF1084
      FFFF1084FFFF1084FFFF087BFFFF087BFFFF0073FFFF0073FFFF0073FFFF0073
      FFFF006BEFFF006BF7FF0063D6FF0063D6FF00399CFF00000000000000000000
      00000000000000000000B57B7BFFD3ABA1FFF4DFD3FFF4DFD3FFF4D3B5FFD398
      84FFBF8484FFE9D3C9FFE9D3C9FFF4DFD3FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3
      C9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3C9FFE9D3C9FFF4DFD3FFDFBF
      B5FFBF7B7BFFBF7B7BFFDFAB98FFF4DFC9FFF4DFD3FFD3ABA1FFD3ABA1FFB57B
      7BFF000000000000000000000000000000FFC0C0C0FF000000FFC0C0C0FFC0C0
      C0FF000000FFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FF000000FF000000000000000000000000000000008F8F
      8FFFEAEAEAFFEAEAEAFFF4F4F4FFEAEAEAFFD4D4D4FFABABABFFABABABFF988F
      8FFFA1A1A1FFCACACAFFA1A1A1FFA1A1A1FF8F8F8FFF8F8484FF848484FF8F84
      84FF8F8484FF988F8FFFA1A1A1FFA1A1A1FF8F8F8FFF8F8F8FFF6A6A6AFF5050
      50FF8F8484FF0000000000000000000000000000000000000000006BEFFF006B
      EFFF087BFFFF1084FFFF188CFFFF188CFFFF188CFFFF188CFFFF1084FFFF6BB5
      FFFF1084FFFF1084FFFF087BFFFF087BFFFF0073FFFF0073FFFF0073FFFF0073
      FFFF0073FFFF006BF7FF0063DEFF0063DEFF00399CFF00000000000000000000
      00000000000000000000B57B7BFFD3B5ABFFF4E9DFFFF4E9DFFFF4DFD3FFF4C9
      A1FFC98E7BFFC9A198FFC9A198FFF4DFD3FFF4DFD3FFF4DFD3FFF4DFD3FFF4DF
      D3FFF4DFD3FFF4DFD3FFF4DFD3FFF4DFD3FFF4DFD3FFF4E9DFFFF4DFD3FFBF8E
      8EFFC98E84FFC98E84FFF4DFC9FFF4DFD3FFF4E9DFFFD3B5ABFFD3B5ABFFB57B
      7BFF000000000000000000000000000000FFC0C0C0FF000000FFC0C0C0FF0000
      00FFFFFFFFFF000000FFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF0000000000000000000000008F8F
      8FFFE0E0E0FFE0E0E0FFD4CACAFFABA1A1FF8F8F8FFFABA1A1FFABA1A1FFCACA
      CAFFD4D4D4FFE0E0E0FFE0E0E0FFE0E0E0FFCACACAFFB6B6B6FFABA1A1FF9898
      98FF989898FF8F8F8FFF8F8484FF848484FF8F8F8FFF8F8F8FFF989898FFA1A1
      A1FF8F8F8FFF0000000000000000000000000000000000000000006BEFFF006B
      EFFF1084FFFF188CFFFF188CFFFF188CFFFF188CFFFF188CFFFF6BB5FFFFFFFF
      FFFF6BB5FFFF6BB5FFFF087BFFFF087BFFFF087BFFFF0073FFFF0073FFFF0073
      FFFF006BF7FF0073FFFF0063DEFF0063DEFF004AADFF00000000000000000000
      00000000000000000000B57B7BFFD3B5B5FFF4F4E9FFF4F4E9FFF4E9DFFFF4E9
      D3FFF4BFA1FFB57B7BFFB57B7BFFD3B5B5FFF4F4E9FFF4E9DFFFF4E9DFFFF4E9
      DFFFF4E9DFFFF4E9DFFFF4E9DFFFF4E9DFFFF4E9DFFFF4E9DFFFD3A1A1FFBF84
      7BFFF4C9B5FFF4C9B5FFF4E9DFFFF4E9DFFFF4F4E9FFD3B5B5FFD3B5B5FFB57B
      7BFF00000000808080FF000000FF000000FFC0C0C0FF000000FFC0C0C0FFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF00000000000000008F8F
      8FFFA19898FFA19898FF8F8F8FFFABABABFFCACACAFFD4D4D4FFD4D4D4FFCACA
      CAFFCACACAFFEAE0E0FFF4F4F4FFF4F4F4FFF4F4F4FFEAEAEAFFE0E0E0FFCACA
      CAFFCACACAFFC0C0C0FFABABABFFA1A1A1FF988F8FFF988F8FFF8F8F8FFF8F84
      84FF848484FF0000000000000000000000000000000000000000087BFFFF087B
      FFFF1084FFFF218CFFFF218CFFFF218CFFFF218CFFFF6BB5FFFFFFFFFFFF6BB5
      FFFFFFFFFFFFFFFFFFFF6BB5FFFF087BFFFF087BFFFF0073FFFF0073FFFF0073
      FFFF0073FFFF0073FFFF006BEFFF006BEFFF004AADFF00000000000000000000
      00000000000000000000B57B7BFFDFB5B5FFFFFFF4FFFFFFF4FFF4F4E9FFF4F4
      E9FFF4C9B5FFBF847BFFBF847BFFBF7B7BFFC99898FFC9A198FFC99898FFC998
      98FFC99898FFC9A198FFC99898FFC99898FFC99898FFC98E8EFFB57B7BFFD3A1
      98FFF4E9DFFFF4E9DFFFF4F4F4FFF4F4E9FFFFFFF4FFDFB5B5FFDFB5B5FFB57B
      7BFF00000000000000FFC0C0C0FF000000FFC0C0C0FF000000FF000000FFFFFF
      FFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF000000008F8F
      8FFFABABABFFABABABFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACA
      CAFFE0E0E0FFF4F4F4FFB6B6B6FFB6B6B6FFB6ABB6FFC0C0C0FFD4D4D4FFE0E0
      E0FFE0E0E0FFE0E0E0FFD4D4D4FFCACACAFFC0C0C0FFC0C0C0FFB6B6B6FFABAB
      ABFF8F8F8FFF0000000000000000000000000000000000000000087BFFFF087B
      FFFF1084FFFF218CFFFF218CFFFF218CFFFF218CFFFF6BB5FFFFFFFFFFFF6BB5
      FFFFFFFFFFFFFFFFFFFF6BB5FFFF087BFFFF087BFFFF0073FFFF0073FFFF0073
      FFFF0073FFFF0073FFFF006BEFFF006BEFFF004AADFF00000000000000000000
      00000000000000000000B57B7BFFDFB5B5FFFFFFF4FFFFFFF4FFF4F4E9FFF4F4
      E9FFF4C9B5FFBF847BFFBF847BFFBF7B7BFFC99898FFC9A198FFC99898FFC998
      98FFC99898FFC9A198FFC99898FFC99898FFC99898FFC98E8EFFB57B7BFFD3A1
      98FFF4E9DFFFF4E9DFFFF4F4F4FFF4F4E9FFFFFFF4FFDFB5B5FFDFB5B5FFB57B
      7BFF00000000000000FFC0C0C0FF000000FFC0C0C0FF000000FFC0C0C0FFFFFF
      FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000008F8F
      8FFFABABABFFABABABFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACA
      CAFFE0E0E0FFF4F4F4FFB6B6B6FFB6B6B6FFB6ABB6FFC0C0C0FFD4D4D4FFE0E0
      E0FFE0E0E0FFE0E0E0FFD4D4D4FFCACACAFFC0C0C0FFC0C0C0FFB6B6B6FFABAB
      ABFF8F8F8FFF0000000000000000000000000000000000000000087BFFFF087B
      FFFF218CFFFF218CFFFF218CFFFF6BB5FFFF6BB5FFFFFFFFFFFF6BB5FFFF188C
      FFFF1084FFFF1084FFFFFFFFFFFF6BB5FFFF087BFFFF0073FFFF0073FFFF0073
      FFFF006BF7FF0073FFFF006BF7FF006BF7FF0052B5FF00000000000000000000
      00000000000000000000B57B7BFFDFBFB5FFFFFFFFFFFFFFFFFFFFFFF4FFD3B5
      ABFFB57B7BFFC98E8EFFC98E8EFFD3B5B5FFC98E8EFFBF8484FFBF8484FFBF84
      84FFBF8484FFBF8484FFBF8484FFBF988EFFBF988EFFD3B5B5FFC9ABA1FFBF7B
      7BFFC98E8EFFC98E8EFFE9DFDFFFFFFFFFFFFFFFFFFFDFBFB5FFDFBFB5FFB57B
      7BFF00000000000000FFC0C0C0FF000000FFC0C0C0FF000000FFC0C0C0FF0000
      00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF00000000000000008F8F
      8FFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFD4D4
      D4FFF4F4F4FFABABABFF98A198FF98A198FF6AB66AFFA1A1A1FF989898FF9898
      98FF989898FFABABABFFB6B6B6FFCACACAFFD4D4D4FFD4D4D4FFD4D4D4FFCACA
      CAFF989898FF0000000000000000000000000000000000000000087BFFFF087B
      FFFF299CFFFF218CFFFF6BB5FFFFFFFFFFFFFFFFFFFF6BB5FFFF188CFFFF188C
      FFFF1084FFFF1084FFFF087BFFFFFFFFFFFF6BB5FFFF0073FFFF0073FFFF0073
      FFFF0073FFFF087BFFFF006BF7FF006BF7FF004AADFF00000000000000000000
      00000000000000000000B57B7BFFDFBFBFFFF4DFDFFFF4DFDFFFC99898FFBF7B
      7BFFD3B5B5FFF4F4F4FFF4F4F4FFFFFFFFFFF4FFFFFFE9F4F4FFE9F4F4FFE9F4
      F4FFE9F4F4FFE9F4F4FFE9F4F4FFE9FFFFFFE9FFFFFFE9FFFFFFE9FFFFFFDFD3
      C9FFBF8E8EFFBF8E8EFFBF7B7BFFD3B5B5FFFFF4F4FFDFBFBFFFDFBFBFFFB57B
      7BFF00000000000000FFC0C0C0FF000000FFC0C0C0FF000000FFC0C0C0FFC0C0
      C0FF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFF8000
      00FFFFFFFFFFFFFFFFFF000000FF000000000000000000000000000000000000
      0000ABABABFFABABABFFD4D4D4FFCACACAFFCACACAFFE0E0E0FFE0E0E0FFE0E0
      E0FFA1A1A1FFABABABFFEAEAEAFFEAEAEAFFCAF4CAFFEAEAEAFFE0E0E0FFF4AB
      A1FFF4ABA1FFABABABFFA19898FF988F8FFF989898FF989898FFABABABFFABAB
      ABFFA1A1A1FF0000000000000000000000000000000000000000188CFFFF188C
      FFFF218CFFFF299CFFFF299CFFFF6BB5FFFF6BB5FFFF188CFFFF188CFFFF188C
      FFFF1084FFFF1084FFFF087BFFFF087BFFFFFFFFFFFF6BB5FFFF6BB5FFFF087B
      FFFF0073FFFF0073FFFF0073FFFF0073FFFF0052B5FF00000000000000000000
      00000000000000000000BF7B7BFFC99898FFBF8484FFBF8484FFBF8484FFE9DF
      DFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FFFFFFF4FFFFFFF4FFFFFFF4FFFFFFF4FF
      FFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FF
      FFFFE9F4F4FFE9F4F4FFC9ABABFFB57B7BFFC98E8EFFD3A1A1FFD3A1A1FFB57B
      7BFF00000000000000FFC0C0C0FF000000FFC0C0C0FF000000FFC0C0C0FFC0C0
      C0FFC0C0C0FF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FFFFFFFFFFFFFFFFFF000000FF0000000000000000000000000000
      00000000000000000000A1A1A1FFB6B6B6FFCACACAFFB6B6B6FFB6B6B6FF9898
      98FFC0B6B6FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFEAEAEAFFE0E0E0FFE0E0
      E0FFE0E0E0FFE0E0E0FFD4D4D4FFCACACAFFC0C0C0FFC0C0C0FF988F8FFF8F8F
      8FFF0000000000000000000000000000000000000000000000001084FFFF1084
      FFFF319CFFFF299CFFFF299CFFFF218CFFFF218CFFFF188CFFFF188CFFFF188C
      FFFF1084FFFF1084FFFF087BFFFF087BFFFF087BFFFFFFFFFFFFFFFFFFFF6BB5
      FFFF006BF7FF0073FFFF0073FFFF0073FFFF0052B5FF00000000000000000000
      00000000000000000000BF8484FFB57B7BFFBFB5B5FFBFB5B5FFF4F4F4FFFFFF
      FFFFFFFFFFFFF4FFFFFFF4FFFFFFF4FFFFFFF4FFFFFFF4FFFFFFF4FFFFFFF4FF
      FFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FF
      FFFFE9FFFFFFE9FFFFFFE9FFFFFFDFE9E9FFC9ABA1FFBF8484FFBF8484FFB57B
      7BFF00000000000000FFC0C0C0FF000000FFC0C0C0FF000000FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFF800000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00000000000000000000
      0000000000000000000000000000000000008F8484FFABABABFFABABABFFD4D4
      D4FFC0C0C0FF989898FFB6B6B6FFB6B6B6FFD4D4D4FFE0E0E0FFE0E0E0FFE0E0
      E0FFE0E0E0FFE0E0E0FFE0E0E0FFD4D4D4FFB6B6B6FFB6B6B6FFABA1A1FF0000
      00000000000000000000000000000000000000000000000000001084FFFF1084
      FFFF319CFFFF299CFFFF299CFFFF218CFFFF218CFFFF188CFFFF188CFFFF188C
      FFFF1084FFFF1084FFFF087BFFFF087BFFFF087BFFFFFFFFFFFFFFFFFFFF6BB5
      FFFF006BF7FF0073FFFF0073FFFF0073FFFF0052B5FF00000000000000000000
      00000000000000000000BF8484FFB57B7BFFBFB5B5FFBFB5B5FFF4F4F4FFFFFF
      FFFFFFFFFFFFF4FFFFFFF4FFFFFFF4FFFFFFF4FFFFFFF4FFFFFFF4FFFFFFF4FF
      FFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FFFFFFE9FF
      FFFFE9FFFFFFE9FFFFFFE9FFFFFFDFE9E9FFC9ABA1FFBF8484FFBF8484FFB57B
      7BFF00000000000000FFC0C0C0FF000000FFC0C0C0FF000000FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000008F8484FFABABABFFABABABFFD4D4
      D4FFC0C0C0FF989898FFB6B6B6FFB6B6B6FFD4D4D4FFE0E0E0FFE0E0E0FFE0E0
      E0FFE0E0E0FFE0E0E0FFE0E0E0FFD4D4D4FFB6B6B6FFB6B6B6FFABA1A1FF0000
      0000000000000000000000000000000000000000000000000000188CFFFF188C
      FFFF399CFFFF319CFFFF319CFFFF299CFFFF299CFFFF218CFFFF188CFFFF188C
      FFFF1084FFFF1084FFFF087BFFFF087BFFFF0073FFFF0073FFFF0073FFFFFFFF
      FFFF6BB5FFFF087BFFFF0073FFFF0073FFFF004AADFF00000000000000000000
      00000000000000000000BF7B7BFFA1A1A1FFA1FFFFFFA1FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4FFFFFFF4FFFFFFF4FFFFFFF4FFFFFFF4FFFFFFF4FFFFFFF4FF
      FFFFE9FFFFFFE9FFFFFFF4FFFFFFE9FFFFFFE9FFFFFFF4FFFFFFE9FFFFFFE9FF
      FFFFDFF4FFFFDFF4FFFFD3F4F4FFD3E9F4FFB5DFE9FFABA1A1FFABA1A1FFB57B
      7BFF00000000000000FFC0C0C0FF000000FFC0C0C0FFC0C0C0FF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FF000000000000000000000000000000000000
      000000000000000000000000000000000000989898FFF4F4F4FFF4F4F4FFF4F4
      F4FFD4D4D4FFABABABFFABABABFFABABABFFB6B6B6FFCACACAFFCACACAFFCACA
      CAFFCACACAFFCACACAFFB6B6B6FF989898FFABA1A1FFABA1A1FF000000000000
      0000000000000000000000000000000000000000000000000000188CFFFF188C
      FFFF39A5FFFF4AA5FFFF399CFFFF319CFFFF319CFFFF218CFFFF188CFFFF218C
      FFFF1084FFFF1084FFFF1084FFFF087BFFFF087BFFFF0073FFFF0073FFFF087B
      FFFFFFFFFFFF087BFFFF0073FFFF0073FFFF0052B5FF00000000000000000000
      00000000000000000000BF847BFFAB8E98FFABE9E9FFABE9E9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF4FFFFFFE9F4F4FFD3E9E9FFBFDFDFFFBFDFDFFFB5D3D3FFA1BFC9FF8EB5
      BFFF84ABBFFF84ABBFFF72A1B5FF69A1B5FF7B8EA1FFA18484FFA18484FFB57B
      7BFF00000000000000FFC0C0C0FF000000FFC0C0C0FFC0C0C0FFC0C0C0FF0000
      00FF000000FF000000FF000000FF000000FFC0C0C0FF000000FFFFFFFFFFFFFF
      FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EAD4D4FFEAD4D4FFFFE0
      D4FFFFE0CAFFFFD4CAFFF4D4CAFFF4D4CAFFF4D4CAFFF4D4CAFFEAD4D4FFE0D4
      D4FFE0D4D4FFD4D4D4FFB6B6B6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000218CFFFF218C
      FFFF52ADFFFF4AA5FFFF39A5FFFF319CFFFF319CFFFF299CFFFF218CFFFF188C
      FFFF1084FFFF1084FFFF1084FFFF1084FFFF087BFFFF087BFFFF087BFFFF0073
      FFFF0073FFFF087BFFFF0073FFFF0073FFFF0052BDFF00000000000000000000
      0000000000000000000000000000B57B7BFFB57B7BFFB57B7BFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4FFFFFFF4FFFFFFE9FFFFFFD3E9E9FFBFDFDFFFB5D3D3FFB5D3
      D3FF98C9D3FF72B5BFFF69ABBFFF69ABBFFF69ABBFFF69B5C9FF69B5C9FF69B5
      D3FF69BFDFFF69BFDFFF72BFE9FF8EA1BFFFBF7B7BFFBF847BFFBF847BFF0000
      000000000000000000FFC0C0C0FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FFFFFF
      FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF
      FFFF000000FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0B6ABFFE0B6ABFFFFE0
      D4FFFFD4CAFFFFD4C0FFFFCAB6FFFFCAB6FFFFC0ABFFFFB6A1FFFFB6A1FFFFB6
      98FFFFB698FFEAC0C0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000299CFFFF299C
      FFFF63B5FFFF5AB5FFFF4AA5FFFF39A5FFFF39A5FFFF399CFFFF319CFFFF299C
      FFFF218CFFFF218CFFFF188CFFFF188CFFFF1084FFFF188CFFFF188CFFFF1084
      FFFF1084FFFF087BFFFF0073FFFF0073FFFF0052B5FF00000000000000000000
      000000000000000000000000000000000000BF7B7BFFBF7B7BFFB57B7BFFA1A1
      A1FF98F4FFFF84FFFFFF84FFFFFF7BE9F4FF72D3DFFF69D3DFFF69D3DFFF69D3
      DFFF69DFE9FF72E9F4FF72E9F4FF72E9F4FF72E9F4FF72DFFFFF72DFFFFF72DF
      FFFF7BD3F4FF7BD3F4FFAB98A1FFBF847BFFBF847BFF00000000000000000000
      000000000000000000FFC0C0C0FFC0C0C0FF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
      00FFFFFFFFFF0000FFFF000000FFFFFFFFFF0000FFFFFF00FFFFFFFFFFFF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0B6ABFFE0B6ABFFFFE0
      D4FFFFD4CAFFFFD4C0FFFFCAB6FFFFCAB6FFFFC0ABFFFFB6A1FFFFB698FFF4A1
      8FFFF4A18FFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000299CFFFF299C
      FFFF63B5FFFF5AB5FFFF4AA5FFFF39A5FFFF39A5FFFF399CFFFF319CFFFF299C
      FFFF218CFFFF218CFFFF188CFFFF188CFFFF1084FFFF188CFFFF188CFFFF1084
      FFFF1084FFFF087BFFFF0073FFFF0073FFFF0052B5FF00000000000000000000
      000000000000000000000000000000000000BF7B7BFFBF7B7BFFB57B7BFFA1A1
      A1FF98F4FFFF84FFFFFF84FFFFFF7BE9F4FF72D3DFFF69D3DFFF69D3DFFF69D3
      DFFF69DFE9FF72E9F4FF72E9F4FF72E9F4FF72E9F4FF72DFFFFF72DFFFFF72DF
      FFFF7BD3F4FF7BD3F4FFAB98A1FFBF847BFFBF847BFF00000000000000000000
      000000000000000000FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF000000FF0000
      00FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF000000FFFFFFFFFF0000FFFF000000FFFFFFFFFF0000FFFF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0B6ABFFE0B6ABFFFFE0
      D4FFFFD4CAFFFFD4C0FFFFCAB6FFFFCAB6FFFFC0ABFFFFB6A1FFFFB698FFF4A1
      8FFFF4A18FFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000319CFFFF319C
      FFFF73BDFFFF73BDFFFF5AB5FFFF4AA5FFFF4AA5FFFF4AA5FFFF39A5FFFF399C
      FFFF319CFFFF319CFFFF319CFFFF319CFFFF299CFFFF218CFFFF218CFFFF188C
      FFFF188CFFFF1084FFFF0073FFFF0073FFFF004AADFF00000000000000000000
      0000000000000000000000000000000000000000000000000000B57B7BFFB57B
      7BFFA1A1A1FF7BDFE9FF7BDFE9FF72F4FFFF72F4FFFF72E9FFFF72F4FFFF72F4
      FFFF72F4FFFF72F4FFFF72E9FFFF72E9FFFF72E9FFFF72E9FFFF72DFFFFF84C9
      DFFFAB8E98FFAB8E98FFBF7B7BFF000000000000000000000000000000000000
      00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF00000000000000FF0000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0C0B6FFE0C0B6FFFFE0
      D4FFFFD4CAFFFFD4C0FFFFCAB6FFFFCAB6FFFFC0ABFFFFB6A1FFFFB698FFF4A1
      8FFFF4A18FFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000039A5FFFF39A5
      FFFF6BB5FFFF73BDFFFF5AB5FFFF4AA5FFFF4AA5FFFF399CFFFF399CFFFF319C
      FFFF319CFFFF319CFFFF319CFFFF319CFFFF299CFFFF218CFFFF218CFFFF188C
      FFFF1084FFFF087BFFFF006BF7FF006BF7FF005ACEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BF7B7BFFBF8484FFBF8484FF98B5BFFF72F4FFFF72F4FFFF72F4FFFF72F4
      FFFF72E9FFFF72E9FFFF72F4FFFF72F4FFFF72F4FFFF72E9F4FFA1ABB5FFBF84
      7BFFBF7B7BFFBF7B7BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0C0B6FFE0C0B6FFFFE0
      D4FFFFD4CAFFFFD4C0FFFFCAB6FFFFCAB6FFFFC0ABFFFFB6A1FFFFB698FFF4AB
      A1FFF4ABA1FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000039A5FFFF39A5
      FFFF39A5FFFF319CFFFF218CFFFF188CFFFF188CFFFF188CFFFF1084FFFF1084
      FFFF1084FFFF1084FFFF188CFFFF1084FFFF087BFFFF087BFFFF087BFFFF087B
      FFFF006BEFFF006BEFFF006BEFFF006BEFFF399CFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BF847BFFBF847BFFBF7B7BFFABA1A1FF84DFDFFF72F4FFFF72F4
      FFFF72F4FFFF72F4FFFF72F4FFFF84DFDFFF84DFDFFFAB98A1FFBF7B7BFFBF84
      7BFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0C0B6FFE0C0B6FFFFE0
      D4FFFFD4CAFFFFD4C0FFFFCAB6FFFFCAB6FFFFC0ABFFFFB6A1FFF4ABA1FFF4AB
      A1FFF4ABA1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BF7B7BFFBF8484FFA1A1A1FFA1A1
      A1FF98B5BFFF98B5BFFFAB98A1FFBF8484FFBF8484FFBF7B7BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0B6B6FFFFEAE0FFFFEAE0FFFFE0
      D4FFFFD4CAFFFFD4C0FFFFCAB6FFFFCAB6FFFFC0ABFFFFC0A1FFF4ABA1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BF7B7BFFBF8484FFA1A1A1FFA1A1
      A1FF98B5BFFF98B5BFFFAB98A1FFBF8484FFBF8484FFBF7B7BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0B6B6FFFFEAE0FFFFEAE0FFFFE0
      D4FFFFD4CAFFFFD4C0FFFFCAB6FFFFCAB6FFFFC0ABFFFFC0A1FFF4ABA1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BF847BFFBF7B7BFFBF7B
      7BFFBF7B7BFFBF7B7BFFBF7B7BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0C0B6FFFFF4EAFFFFF4EAFFFFE0
      D4FFFFE0CAFFFFD4C0FFFFCAB6FFFFCAB6FFFFCAB6FFF4ABA1FFF4ABA1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D4A1A1FFE0C0B6FFE0B6B6FFE0B6B6FFE0B6
      ABFFE0B6ABFFE0ABA1FFE0ABA1FFE0ABA1FFE0A198FFF4ABA1FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000078000000780000000100010000000000800700000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFC000000000000000000000000
      FFFFFFFC000000000000000000000000FFFFFFFC000000000000000000000000
      F7FFFFFC000000000000000000000000FBFFFFFC000000000000000000000000
      FDFF6DFC000000000000000000000000FF8000FC000000000000000000000000
      E160007C000000000000000000000000FF80007C000000000000000000000000
      FDFC007C000000000000000000000000FBFED87C000000000000000000000000
      F7FFFC7C000000000000000000000000FFFFFC7C000000000000000000000000
      FFFFFC7C000000000000000000000000E000003C000000000000000000000000
      E555553C000000000000000000000000E2AAAABC000000000000000000000000
      E555553C000000000000000000000000E2A08ABC000000000000000000000000
      E555553C000000000000000000000000E2A22ABC000000000000000000000000
      E555503C000000000000000000000000E2AAA8BC000000000000000000000000
      E555503C000000000000000000000000E2AAA8BC000000000000000000000000
      E000003C000000000000000000000000E000003C000000000000000000000000
      FFFFFFFC000000000000000000000000FFFFFFFC000000000000000000000000
      FFFFFFFC000000000000000000000000FFE1FFFFFFFFFFFFFFFFFFFFFFFFFF00
      FF80FFFFFFFFFFFFFFFFFFFFFFFFFF00FF80FFFFFFFFFFFFFFFFFFFFFFFFFF00
      FC007FFFFFFFFFFFFFFFFFF000000700F0001FFFFFFFFFFFFFFFFFF000000700
      80000FFFFFFFFFFC0000003000000700800007FE0001FFF80000007000000700
      800007FE0001FFF80000007000000700800003FE00007FF80000007000000700
      800000FE00003FF800000070000007008000007E00001FF80000007000000700
      8000003E00000FF800000070000007008000003E00000FF80000007000000700
      8000001F000003F800000070000007008000001FC00001F80000007000000700
      8000001FE00000F80000007000000700C000001FF00000780000007000000700
      C000001FF00000780000007000000700F000001FF80000180000007000000700
      F000001FFE0000180000007000000700F800001FFF0000180000007000000700
      FC00001FFF8000180000007000000700FC00001FFF8000180000007000000700
      FE00007FFFC00018000001F000000700FF8000FFFFF0001800FFFFF000000700
      FFC007FFFFF8007800FFFFFC00000F00FFE00FFFFFFFFFFC01FFFFFFFFFFFF00
      FFE00FFFFFFFFFFC01FFFFFFFFFFFF00FFF01FFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF87FFFFFF83FFFF00
      FFFFFFFFFFFFFFFF001FFFFF00FFFF00FFFFFFFFFFFFFFFF001FFFFF00FFFF00
      FFFFFFFFFFFFFFF80001FFFE187FFF00FFFF041FFFC3FFF000007FFC7C3FFF00
      FFFF001FFE007FF0000007FCFC1FFF00FFFF001FF8001FF0000007FCF007FF00
      FFFF001FF8001FF00000007CF007FF0000000007000003F00000007CE003FF00
      00000000000000F00000003C0001FF000000000000000010000000300300FF00
      00000000000000000000003C03803F0000000000000000000000003C03803F00
      00000000000000000000003E00C01F0000000003000000000000003F00601F00
      00000003E00000000000003F80383F0000000003F80000000000003FE01C1F00
      00000003F80000000000003FE01C1F0000000003FFC000100000003FF0060F00
      00000003FFF000F00000003FF803070000000003FE0003F00000003FFC03C100
      00000003E0001FF00000003FFF07E10000000003E0001FF00000003FFF07E100
      0000000300007FF00000003FFF83E100000000070001FFF00000003FFFC1E100
      FFFF001F000FFFF80000003FFFE00100FFFF001FFFFFFFFFF800007FFFF80700
      FFFF001FFFFFFFFFFFC001FFFFF80700FFFF041FFFFFFFFFFFC001FFFFFC0F00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFE0000001FFFFFFFFFFFFFFF00
      FFFFFFFC0000000FFFFFFFFFF0603F00FFFFFFFC0000000FFFFFFFFFF0603F00
      FFFFFFFC0000000FF00003FF80000F00C000007C0000000FE00001FE00000100
      C000007C0000000F8000007C00000700C000007C0000000F8000002000000700
      C000007C0000000F8000002000000700C000007C0000000E000001E000000700
      C000007C0000000E000000E000000700C000007C000000080000006000000700
      C000007C000000080000002000000700C000007C000000080000002000000700
      C000007C000000080000006000000700C000007C00000008000001F000000700
      C000007C00000008000000FC00000F00C000007C000000080000007F00001F00
      C000007C00000008000000FF00001F00C000007C00000008000001FF00003F00
      C000007C00000008000003FF8001FF00C000007E00000018000007FF8003FF00
      C000007F0000007800000FFF8007FF00C000007F0000007800001FFF8007FF00
      C000007FC00001FC0005BFFF8007FF00C000007FF00003FE0FFFFFFF8007FF00
      C000007FF8000FFFFFFFFFFF8007FF00FFFFFFFFFF003FFFFFFFFFFF001FFF00
      FFFFFFFFFF003FFFFFFFFFFF001FFF00FFFFFFFFFF81FFFFFFFFFFFF001FFF00
      FFFFFFFFFFFFFFFFFFFFFFFE003FFF0000000000000000000000000000000000
      000000000000}
  end
  inherited pmShowScan: TPopupMenu
    Left = 480
    Top = 368
  end
  object pmEmailsSend: TPopupMenu
    AutoHotkeys = maManual
    Left = 576
    Top = 368
    object MenuItem1: TMenuItem
      Action = acEmailsSend
    end
  end
end
