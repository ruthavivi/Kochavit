object frmChart: TfrmChart
  Left = 35
  Top = 165
  BorderStyle = bsDialog
  ClientHeight = 344
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dcChart: TDBChart
    Left = 0
    Top = 0
    Width = 765
    Height = 344
    BackWall.Brush.Color = clWhite
    Title.Text.Strings = (
      '')
    Title.Visible = False
    Legend.Visible = False
    Align = alClient
    Color = clWhite
    TabOrder = 0
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      ColorEachPoint = True
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Font.Charset = HEBREW_CHARSET
      Marks.Frame.Visible = False
      Marks.Visible = True
      BarStyle = bsCilinder
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
end
