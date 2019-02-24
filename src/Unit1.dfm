object greetingForm: TgreetingForm
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 0
  BorderStyle = bsNone
  Caption = 'ri'
  ClientHeight = 264
  ClientWidth = 568
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
    Width = 568
    Height = 57
    Brush.Color = 6313292
    Pen.Style = psClear
  end
  object titleLbl: TLabel
    Left = 232
    Top = 8
    Width = 115
    Height = 32
    Caption = 'Welcome'
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
    Height = 182
    BorderStyle = bsNone
    Color = 16549672
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    Lines.Strings = (
      'Hello,'
      ''
      'This program will act as your personal '
      'financial advisor.'
      ''
      'Made by Ahmed El-Naggar')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 528
    Top = 224
  end
end
