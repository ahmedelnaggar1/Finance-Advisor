program FinanceAdvisor;

uses
  Forms,
  Unit1 in 'src\Unit1.pas' {greetingForm},
  Unit2 in 'src\Unit2.pas' {mainForm},
  Unit3 in 'src\Unit3.pas' {byeForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TgreetingForm, greetingForm);
  Application.CreateForm(TmainForm, mainForm);
  Application.CreateForm(TbyeForm, byeForm);
  Application.Run;
end.
