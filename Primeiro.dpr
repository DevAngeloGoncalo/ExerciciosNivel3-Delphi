program Primeiro;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  CadastroVendedorCliente in 'Exerc�cios\1 - Primeiro\CadastroVendedorCliente.pas' {Form1},
  UController in 'Exerc�cios\1 - Primeiro\UController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
