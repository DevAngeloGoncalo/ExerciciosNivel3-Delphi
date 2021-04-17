program Terceiro;

uses
  Vcl.Forms,
  UTestCMX in 'Exercícios\3 - Terceiro\UTestCMX.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
