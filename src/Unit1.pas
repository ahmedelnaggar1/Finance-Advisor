unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Unit2;

type
  TgreetingForm = class(TForm)
    Timer1: TTimer;
    titleLbl: TLabel;
    topHalfShape: TShape;
    Memo1: TMemo;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  greetingForm: TgreetingForm;

implementation

{$R *.dfm}

procedure TgreetingForm.Timer1Timer(Sender: TObject);
var alphaVal : Byte;
begin

  alphaVal := greetingForm.AlphaBlendValue;

  if(alphaVal < 255) then
  begin

    alphaVal := alphaVal + 1;
    greetingForm.AlphaBlendValue := alphaVal;

  end
  else
  begin

    //Show the main form and hide this one
    greetingForm.Hide();

    //Show main form
    mainForm.Show();

    //Disable this timer
    timer1.Enabled := false;

  end;

end;

end.
