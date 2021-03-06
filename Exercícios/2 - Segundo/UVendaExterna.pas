unit UVendaExterna;

interface

uses
  UVendaPrincipal,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TVendaExterna = class(TVendaPrincipal)
    Label6: TLabel;
    EditVendedorExterno: TEdit;
    EditDAV: TEdit;
    Label7: TLabel;
  protected
    nomeVendedorExterno: string[100];
    function salvar: Boolean; override;
    function verificar: Boolean; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VendaExterna: TVendaExterna;

implementation

{$R *.dfm}
{ TVendaExterna }

function TVendaExterna.salvar: Boolean;
VAR
  data, aux: string;
begin
  if inherited then
  begin
    aux := Copy(EditVendedorExterno.Text, 1, 3);
    EditDAV.Text :=  aux + FormatDateTime('ddmmyyyy', Date);
    data := EditDAV.Text;
    lista[Length(lista) - 1] := lista[Length(lista) - 1] + ' | DAV: ' + data;
  end;
end;

function TVendaExterna.verificar: Boolean;
begin
  nomeVendedorExterno := EditVendedorExterno.Text;
  if inherited then
  begin
    if (valorPedido <= 1000) and (nomeVendedorExterno <> '') and
      (Length(nomeVendedorExterno) <= 100) then
    begin
      result := true;
    end
    else
    begin
      MessageDlg('Insira pedido com valor abaixo de R$ 1000,00', mtWarning,
        [mbOK], 0);
      result := false;
    end;
  end;

end;

end.
