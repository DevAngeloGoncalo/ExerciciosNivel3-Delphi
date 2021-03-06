unit UMenuPrincipal;

interface

uses
  UVendaInterna, UVendaExterna, UVendaMOIP,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TUFormMenuPrincipal = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    ButtonInterna: TButton;
    ButtonExterna: TButton;
    ButtonMOIP: TButton;
    procedure ButtonInternaClick(Sender: TObject);
    procedure ButtonExternaClick(Sender: TObject);
    procedure ButtonMOIPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UFormMenuPrincipal: TUFormMenuPrincipal;

implementation

{$R *.dfm}

procedure TUFormMenuPrincipal.ButtonExternaClick(Sender: TObject);
begin
  VendaExterna.Show;
end;

procedure TUFormMenuPrincipal.ButtonInternaClick(Sender: TObject);
begin
  VendaInterna.Show;
end;

procedure TUFormMenuPrincipal.ButtonMOIPClick(Sender: TObject);
begin
  VendaMOIP.Show;
end;

end.
