unit UVendaMOIP;

interface

uses
  UVendaInterna,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  IdHashMessageDigest, idHash;

type
  TVendaMOIP = class(TVendaInterna)
    Label6: TLabel;
    EditNumPedMOIP: TEdit;
    Label7: TLabel;
    EditCodMOIP: TEdit;
  protected
    MD5Hash: TIdHashMessageDigest5;
    codMOIP: string;
    numPedidoMOIP: string[20];
    function salvar: Boolean; override;
    function verificar: Boolean; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VendaMOIP: TVendaMOIP;

implementation

{$R *.dfm}

function TVendaMOIP.salvar: Boolean;
begin
  MD5Hash := TIdHashMessageDigest5.Create;
  if inherited then
  begin
    EditCodMOIP.Text := numPedidoMOIP + MD5Hash.HashStringAsHex('7010');
    codMOIP := EditCodMOIP.Text;
    lista[Length(lista) - 1] := lista[Length(lista) - 1] + ' | N? Pedido MOIP: '
      + numPedidoMOIP + ' | Cod MOIP: ' + codMOIP;
  end;

end;

function TVendaMOIP.verificar: Boolean;
begin
  numPedidoMOIP := EditNumPedMOIP.Text;
  if inherited then
  begin
    if (Length(numPedidoMOIP) <= 20) and (numPedidoMOIP <> '') then
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
