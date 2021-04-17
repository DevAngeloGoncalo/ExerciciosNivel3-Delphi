program Segundo;

uses
  Vcl.Forms,
  UMenuPrincipal in 'Exerc�cios\2 - Segundo\UMenuPrincipal.pas' {UFormMenuPrincipal},
  UVendaPrincipal in 'Exerc�cios\2 - Segundo\UVendaPrincipal.pas' {VendaPrincipal},
  UVendaExterna in 'Exerc�cios\2 - Segundo\UVendaExterna.pas' {VendaExterna},
  UVendaInterna in 'Exerc�cios\2 - Segundo\UVendaInterna.pas' {VendaInterna},
  UVendaMOIP in 'Exerc�cios\2 - Segundo\UVendaMOIP.pas' {VendaMOIP};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUFormMenuPrincipal, UFormMenuPrincipal);
  Application.CreateForm(TVendaPrincipal, VendaPrincipal);
  Application.CreateForm(TVendaExterna, VendaExterna);
  Application.CreateForm(TVendaInterna, VendaInterna);
  Application.CreateForm(TVendaMOIP, VendaMOIP);
  Application.Run;
end.
