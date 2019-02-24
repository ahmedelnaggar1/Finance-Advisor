object mainForm: TmainForm
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 245
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Financial Advisor'
  ClientHeight = 710
  ClientWidth = 460
  Color = 6313292
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Shape4: TShape
    Left = 288
    Top = 224
    Width = 174
    Height = 137
    Brush.Color = 7648784
    Pen.Style = psClear
  end
  object topHalfShape: TShape
    Left = 0
    Top = -8
    Width = 491
    Height = 193
    Brush.Color = 16549672
    Pen.Style = psClear
  end
  object dollarLbl: TLabel
    Left = 161
    Top = 46
    Width = 15
    Height = 37
    Caption = '$'
    Color = 16549672
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object investmentMoneyLbl: TLabel
    Left = 0
    Top = 0
    Width = 457
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 'Investment Money:'
    Color = 16549672
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object option1Lbl: TLabel
    Left = 8
    Top = 191
    Width = 176
    Height = 27
    Cursor = crHelp
    Caption = 'Amscot Brokerage:'
    Color = 6313292
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Shape2: TShape
    Left = 0
    Top = 224
    Width = 305
    Height = 137
    Brush.Color = 16549672
    Pen.Style = psClear
  end
  object investmentYears: TLabel
    Left = 0
    Top = 89
    Width = 457
    Height = 37
    Alignment = taCenter
    AutoSize = False
    Caption = 'Investment Years:'
    Color = 16549672
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object option2Lbl: TLabel
    Left = 8
    Top = 367
    Width = 103
    Height = 27
    Cursor = crHelp
    Caption = 'Bank West:'
    Color = 6313292
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Shape1: TShape
    Left = 0
    Top = 400
    Width = 305
    Height = 137
    Brush.Color = 16549672
    Pen.Style = psClear
  end
  object option3Lbl: TLabel
    Left = 8
    Top = 543
    Width = 194
    Height = 27
    Cursor = crHelp
    Caption = 'SEQ Building Society:'
    Color = 6313292
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Shape3: TShape
    Left = 0
    Top = 576
    Width = 305
    Height = 137
    Brush.Color = 16549672
    Pen.Style = psClear
  end
  object profitLbl1: TLabel
    Left = 360
    Top = 224
    Width = 51
    Height = 27
    Caption = 'Profit'
    Color = 7648784
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Shape5: TShape
    Left = 304
    Top = 400
    Width = 158
    Height = 137
    Brush.Color = 7648784
    Pen.Style = psClear
  end
  object Shape6: TShape
    Left = 304
    Top = 576
    Width = 158
    Height = 137
    Brush.Color = 7648784
    Pen.Style = psClear
  end
  object profitLbl2: TLabel
    Left = 360
    Top = 400
    Width = 51
    Height = 27
    Caption = 'Profit'
    Color = 7648784
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object profitLbl3: TLabel
    Left = 360
    Top = 576
    Width = 51
    Height = 27
    Caption = 'Profit'
    Color = 7648784
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object profit1Lbl: TLabel
    Left = 304
    Top = 257
    Width = 158
    Height = 27
    Alignment = taCenter
    AutoSize = False
    Caption = '$0'
    Color = 7648784
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object profit2Lbl: TLabel
    Left = 304
    Top = 433
    Width = 151
    Height = 27
    Alignment = taCenter
    AutoSize = False
    Caption = '$0'
    Color = 7648784
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object profit3Lbl: TLabel
    Left = 304
    Top = 609
    Width = 158
    Height = 27
    Alignment = taCenter
    AutoSize = False
    Caption = '$0'
    Color = 7648784
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object bal1HeadLbl: TLabel
    Left = 352
    Top = 290
    Width = 73
    Height = 27
    Caption = 'Balance'
    Color = 7648784
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object bal1Lbl: TLabel
    Left = 304
    Top = 323
    Width = 158
    Height = 27
    Alignment = taCenter
    AutoSize = False
    Caption = '$0'
    Color = 7648784
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object bal2Lbl: TLabel
    Left = 304
    Top = 499
    Width = 158
    Height = 27
    Alignment = taCenter
    AutoSize = False
    Caption = '$0'
    Color = 7648784
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object bal2HeadLbl: TLabel
    Left = 352
    Top = 466
    Width = 73
    Height = 27
    Caption = 'Balance'
    Color = 7648784
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object bal3HeadLbl: TLabel
    Left = 352
    Top = 642
    Width = 73
    Height = 27
    Caption = 'Balance'
    Color = 7648784
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object bal3Lbl: TLabel
    Left = 304
    Top = 675
    Width = 158
    Height = 27
    Alignment = taCenter
    AutoSize = False
    Caption = '$0'
    Color = 7648784
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object moneyEdit: TEdit
    Left = 182
    Top = 47
    Width = 166
    Height = 36
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = 16549672
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Open Sans'
    Font.Style = []
    MaxLength = 11
    ParentFont = False
    TabOrder = 0
    Text = '0'
    OnChange = moneyEditChange
  end
  object yearsEdit: TEdit
    Left = 182
    Top = 132
    Width = 166
    Height = 36
    AutoSize = False
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = 16549672
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Open Sans'
    Font.Style = []
    MaxLength = 11
    ParentFont = False
    TabOrder = 1
    Text = '0'
    OnChange = yearsEditChange
  end
  object Memo1: TMemo
    Left = 0
    Top = 232
    Width = 305
    Height = 127
    BevelEdges = []
    BorderStyle = bsNone
    Color = 16549672
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Open Sans'
    Font.Pitch = fpFixed
    Font.Style = []
    Lines.Strings = (
      'BHP Bilton Shares: These traditionally stable and '
      'well-performed shares are currently trading at '
      '$18.23 each. Market analysts predict an annual '
      'return of  $1.38 per share')
    MaxLength = 174
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object Memo2: TMemo
    Left = 0
    Top = 408
    Width = 298
    Height = 127
    BevelEdges = []
    BorderStyle = bsNone
    Color = 16549672
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Open Sans'
    Font.Style = []
    Lines.Strings = (
      'Bank West is currently offering a Fixed Term '
      'Deposit investment opportunity delivering 6.2% '
      'per annum. An account servicing fee of $4.00 is '
      'payable monthly')
    MaxLength = 174
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object Memo3: TMemo
    Left = 0
    Top = 586
    Width = 298
    Height = 129
    BevelEdges = []
    BorderStyle = bsNone
    Color = 16549672
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Open Sans'
    Font.Pitch = fpFixed
    Font.Style = []
    Lines.Strings = (
      'Queensland'#39's newest building society is '
      'advertising a Bank Bill investment strategy '
      'designed to attract high levels of investment. The '
      'interest rate for the first $1,000 invested is 4%. '
      'Amounts invested there after attract an interest '
      'rate of 7.2%')
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
end
