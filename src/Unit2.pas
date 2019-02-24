unit Unit2;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Math, Unit3;

type
  TmainForm = class(TForm)
    dollarLbl: TLabel;
    moneyEdit: TEdit;
    topHalfShape: TShape;
    investmentMoneyLbl: TLabel;
    option1Lbl: TLabel;
    Shape2: TShape;
    yearsEdit: TEdit;
    investmentYears: TLabel;
    option2Lbl: TLabel;
    Shape1: TShape;
    option3Lbl: TLabel;
    Shape3: TShape;
    profitLbl1: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    profitLbl2: TLabel;
    profitLbl3: TLabel;
    profit1Lbl: TLabel;
    profit2Lbl: TLabel;
    profit3Lbl: TLabel;
    bal1HeadLbl: TLabel;
    bal1Lbl: TLabel;
    bal2Lbl: TLabel;
    bal2HeadLbl: TLabel;
    bal3HeadLbl: TLabel;
    bal3Lbl: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    procedure yearsEditChange(Sender: TObject);
    procedure moneyEditChange(Sender: TObject);
    procedure proccessOptions();
    procedure handleBadData(profit : Real);
    procedure colourNumbers();
    procedure resetLblColours();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainForm: TmainForm;

implementation

{$R *.dfm}

{
Calculates compound interest
  
  @param principal the amount of money that will be invested
  @param interestRate the annual interest rate
  @param years the number of years the money is invested for
  
@return a real variable containing the compound interest
}
function calculateInterest(principal, interestRate, years : Real) : Real;
begin

  //V = P(1 + r/n) ^ (nt)
  //Where:
  //V = the future value of the investment
  //P = the principal investment amount
  //r = the annual interest rate
  //n = the numer of times that interest is compounded per year - this case it will be 365 since it's daily
  //t = the number of years the money is invested for

  calculateInterest := principal * Power( (1 + interestRate / 365), 365 * years);
end;


//Resets label colours to white
procedure tmainForm.resetLblColours();
begin
  
  option1Lbl.Font.Color := clWhite;
  option2Lbl.Font.Color := clWhite;
  option3Lbl.Font.Color := clWhite;

end;

{
  Colours labels with appropriate colours depending on their value. If negative, the label will be red, else it'll be white.
}
procedure tmainForm.colourNumbers();
var profitTxt   : array of String;
var profitLbls  : array of Tlabel;
var i           : Integer;
begin

  //Set the length of the dynamic arrays
  SetLength(profitTxt, 3);
  SetLength(profitLbls, 3);

  //Assign each array index its appropriate profit label caption
  profitTxt[0]  := profit1Lbl.Caption;
  profitTxt[1]  := profit2Lbl.Caption;
  profitTxt[2]  := profit3Lbl.Caption;

  //Assign each array index its appropriate profit label
  profitLbls[0] := profit1Lbl;
  profitLbls[1] := profit2Lbl;
  profitLbls[2] := profit3Lbl;

  //Colour in PROFIT labels
  //Loop through array
  for i := 0 to 2 do
  begin
    
    //Remove all dollar signs first
    profitTxt[i] := StringReplace(profitTxt[i], '$', '', [rfReplaceAll, rfIgnoreCase]);

    //If negative, change colour to red, else to white
    if(StrToFloat(profitTxt[i]) < 0) then
      profitLbls[i].Font.Color := $000000CC
    else
      profitLbls[i].Font.Color := clWhite;

  end;

  //Colour in BALANCE labels
  profitTxt[0]  := bal1Lbl.Caption;
  profitTxt[1]  := bal2Lbl.Caption;
  profitTxt[2]  := bal3Lbl.Caption;

  profitLbls[0] := bal1Lbl;
  profitLbls[1] := bal2Lbl;
  profitLbls[2] := bal3Lbl;

  //Loop through array
  for i := 0 to 2 do
  begin
    
    //Remove all dollar signs first
    profitTxt[i] := StringReplace(profitTxt[i], '$', '', [rfReplaceAll, rfIgnoreCase]);

    //If negative, change colour to red, else to white
    if(StrToFloat(profitTxt[i]) < 0) then
      profitLbls[i].Font.Color := $000000CC
    else
      profitLbls[i].Font.Color := clWhite;

  end;

end;

procedure TmainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  //Once the user decides to close this form
  //that means he wants to leave the application
  //thus we display the good bye form
  //to do so, we:
  //1) hide this form
  //2) show the good bye form
  //2) enable the byeTimer which slowly fades the good bye form and then closes
  //the application

  //Hide this form
  mainForm.Hide();

  //Show the good bye form
  byeForm.Show();

  //Enable the timer
  byeForm.bye.Enabled := true;

end;


//This function is used when the user enters in an illegal value such as a character
//What it does is reset the profit labels to 0 dollars and takes in the profit and displays it
//under the balance labels
procedure tmainForm.handleBadData(profit : Real);
begin
  
  //Amscot Brokerage
  profit1Lbl.Caption := '$0';
  bal1Lbl.Caption    := FormatCurr('$#,##0', profit);

  //Bank West
  profit2Lbl.Caption := '$0';
  bal2Lbl.Caption    := FormatCurr('$#,##0', profit);

  //SEQ Building Society
  profit3Lbl.Caption := '$0';
  bal3Lbl.Caption    := FormatCurr('$#,##0', profit);

end;

procedure tMainForm.proccessOptions();
var principal, years  :   Real;
var profits           :   array of Real;
var tempOut           :   Double;
begin

  //If there is no money, years entered or a character is entered, then display both profit and balance as $0
  if( NOT(TryStrToFloat(moneyEdit.Text, tempOut)) OR NOT(TryStrToFloat(yearsEdit.Text, tempOut)) ) then
    handleBadData(0)
  else
  begin

    //Set size of dynamic array
    SetLength(profits, 3);
    
    //convert the data in the money edit box and years edit box to floats
    principal := StrToFloat(moneyEdit.Text);
    years     := StrToFloat(yearsEdit.Text);

    //If the money or years entered is less than or equal to 0, then display profit as $0 but balance as the principal
    if((principal <= 0) OR (years <= 0)) then
      handleBadData(principal)
    else
    begin
{
      ╔═╗┌┬┐┌─┐┌─┐┌─┐┌┬┐  ╔╗ ┬─┐┌─┐┬┌─┌─┐┬─┐┌─┐┌─┐┌─┐
      ╠═╣│││└─┐│  │ │ │   ╠╩╗├┬┘│ │├┴┐├┤ ├┬┘├─┤│ ┬├┤ 
      ╩ ╩┴ ┴└─┘└─┘└─┘ ┴   ╚═╝┴└─└─┘┴ ┴└─┘┴└─┴ ┴└─┘└─┘
}

      //Get how many shares user can buy with given money
      //1 stock = 18.23
      //Expected revenue from 1 stock annually is 1.38
      profits[0] := (principal / 18.23) * (1.38 * years) + principal;

///////////////////////////////////////////////////////////

{
      ╔╗ ┌─┐┌┐┌┬┌─  ╦ ╦┌─┐┌─┐┌┬┐
      ╠╩╗├─┤│││├┴┐  ║║║├┤ └─┐ │ 
      ╚═╝┴ ┴┘└┘┴ ┴  ╚╩╝└─┘└─┘ ┴ 
}

      //Fee of $4 a month for X months where X = years * 12
      profits[1]    := calculateInterest(principal, 6.2 / 100, years) - (4 * years * 12);      

///////////////////////////////////////////////////////////
{
      ╔═╗╔═╗╔═╗   ╔╗ ┬ ┬┬┬  ┌┬┐┬┌┐┌┌─┐  ╔═╗┌─┐┌─┐┬┌─┐┌┬┐┬ ┬
      ╚═╗║╣ ║═╬╗  ╠╩╗│ │││   │││││││ ┬  ╚═╗│ ││  │├┤  │ └┬┘
      ╚═╝╚═╝╚═╝╚  ╚═╝└─┘┴┴─┘─┴┘┴┘└┘└─┘  ╚═╝└─┘└─┘┴└─┘ ┴  ┴ 
}

      //First $1,000 is at 4%
      //After that it's 7.2%

      if(principal > 1000) then
      begin
        //First $1,000
        profits[2] := calculateInterest(1000, 4/100, years);
        //Money after that
        profits[2] := profits[2] + calculateInterest(principal - 1000, 7.2/100, years);
      end
      else
        profits[2] := calculateInterest(principal, 4/100, years);

////////////////////////////////////////////////////////////

      //Format numbers to include commas and round them up for the three options

      //Amscot Brokerage
      profit1Lbl.Caption  := FormatCurr('$#.##', profits[0] - principal);
      bal1Lbl.Caption     := FormatCurr('$#.##', profits[0]);
      //Bank West
      profit2Lbl.Caption  := FormatCurr('$#.##', profits[1] - principal);
      bal2Lbl.Caption     := FormatCurr('$#.##', profits[1]);
      //SEQ Building Society
      profit3Lbl.Caption  := FormatCurr('$#.##', profits[2] - principal);
      bal3Lbl.Caption     := FormatCurr('$#.##', profits[2]);

      //Colour in all of the negative numbers to red
      colourNumbers();

      //Reset all label colours to white
      resetLblColours();

      //Colour the option which provides the most profit to green
      if((profits[0] > profits[1]) AND (profits[0] > profits[2])) then
        option1Lbl.Font.Color := $0074B610
      else if((profits[1] > profits[0]) AND (profits[1] > profits[2])) then
        option2Lbl.Font.Color := $0074B610
      else if((profits[2] > profits[1]) AND (profits[2] > profits[0])) then
        option3Lbl.Font.Color := $0074B610

    end;

  end;
end;

procedure TmainForm.moneyEditChange(Sender: TObject);
begin
  //Call calculation function
  proccessOptions();
end;

procedure TmainForm.yearsEditChange(Sender: TObject);
begin
  //Call calculation function
  proccessOptions();
end;

end.
