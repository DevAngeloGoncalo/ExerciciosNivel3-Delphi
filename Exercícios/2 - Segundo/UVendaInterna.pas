unit UVendaInterna;

interface

uses
  UVendaPrincipal,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TVendaInterna = class(TVendaPrincipal)
    EditDAV: TEdit;
    Label5: TLabel;
  protected
    function salvar: Boolean; override;
    function verificar: Boolean; override;
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  VendaInterna: TVendaInterna;

implementation

{$R *.dfm}
{ TVendaInterna }

function TVendaInterna.salvar: Boolean;
VAR
  data : string;
begin
  if inherited then
  begin
    EditDAV.Text :=  FormatDateTime('ddmmyyyy', Date);
    data := EditDAV.Text;
    lista[Length(lista) - 1] := lista[Length(lista) - 1] + ' | DAV: ' + data;
  end;
end;

function TVendaInterna.verificar: Boolean;
begin
  if inherited then
  begin
    if (valorPedido <= 1000) then
    begin
      result := true;
    end
    else
    begin
      MessageDlg('Insira pedido com valor abaixo de R$ 1000,00', mtWarning, [mbOK], 0);
      result := false;
    end;
  end;
end;

end.
