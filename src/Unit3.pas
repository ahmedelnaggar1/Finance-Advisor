unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TbyeForm = class(TForm)
    topHalfShape: TShape;
    titleLbl: TLabel;
    bye: TTimer;
    Memo1: TMemo;
    procedure byeTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  byeForm: TbyeForm;

implementation

uses Unit1;

{$R *.dfm}

procedure TbyeForm.byeTimer(Sender: TObject);
var alphaVal : Byte;
begin

  alphaVal := byeForm.AlphaBlendValue;

  if(alphaVal > 0) then
  begin

    alphaVal := alphaVal - 1;
    byeForm.AlphaBlendValue := alphaVal;

  end
  else
  begin

    //Exit the application
    Application.Terminate();

  end;

end;

end.
