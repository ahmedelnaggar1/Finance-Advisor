object byeForm: TbyeForm
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderStyle = bsNone
  ClientHeight = 258
  ClientWidth = 580
  Color = 16549672
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object topHalfShape: TShape
    Left = 0
    Top = 0
    Width = 580
    Height = 57
    Brush.Color = 6313292
    Pen.Style = psClear
  end
  object titleLbl: TLabel
    Left = 232
    Top = 8
    Width = 129
    Height = 37
    Caption = 'Good bye!'
    Color = 6313292
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 104
    Top = 74
    Width = 385
    Height = 135
    BorderStyle = bsNone
    Color = 16549672
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    Lines.Strings = (
      'Thank you for using my application!'
      ''
      'Hopefully you found it useful.'
      ''
      '- Ahmed El-Naggar')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object bye: TTimer
    Enabled = False
    Interval = 1
    OnTimer = byeTimer
    Left = 528
    Top = 224
  end
end
