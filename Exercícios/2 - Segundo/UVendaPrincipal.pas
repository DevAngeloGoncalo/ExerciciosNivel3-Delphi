unit UVendaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TVendaPrincipal = class(TForm)
    ButtonSalvar: TButton;
    EditNumPedido: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditNomeVendedor: TEdit;
    EditValorPedido: TEdit;
    Label3: TLabel;
    EditNomeCliente: TEdit;
    Label4: TLabel;
    ButtonList: TButton;
    ListBox1: TListBox;
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonListClick(Sender: TObject);
  protected
    lista: array of string;

    numPedido: integer;
    nomeVendedor: string[100];
    valorPedido: currency;
    nomeCliente: string[100];

    function salvar: Boolean; virtual;
    function verificar: Boolean; virtual;
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  VendaPrincipal: TVendaPrincipal;

implementation

{$R *.dfm}

procedure TVendaPrincipal.ButtonListClick(Sender: TObject);
var
  i: integer;
begin
  ListBox1.Clear;
  for i := 0 to Length(lista) - 1 do
  begin
    ListBox1.Items.Add(lista[i]);
  end;
end;

procedure TVendaPrincipal.ButtonSalvarClick(Sender: TObject);
begin
  if verificar then
  begin
    salvar;
    MessageDlg('Dados Cadastrados', mtInformation, [mbOK], 0);
  end
  else
  begin
    MessageDlg('Insira os dados corretamente', mtWarning, [mbOK], 0);
  end;
end;

function TVendaPrincipal.salvar: Boolean;
begin
  SetLength(lista, Length(lista) + 1);
  lista[Length(lista) - 1] := 'Pedido N?: ' + IntToStr(numPedido) +
    ' | Nome Cliente: ' + nomeCliente + ' | Nome Vendedor: ' + nomeVendedor +
    ' | Valor do Pedido: ' + CurrToStr(valorPedido);
  result := true;
end;

function TVendaPrincipal.verificar: Boolean;
begin
  numPedido := StrToInt(EditNumPedido.Text);
  nomeVendedor := EditNomeVendedor.Text;
  valorPedido := StrToCurr(EditValorPedido.Text);
  nomeCliente := EditNomeCliente.Text;
  if (nomeVendedor <> '') and (Length(nomeVendedor) <= 100) and
    (nomeCliente <> '') and (Length(nomeCliente) <= 100) then
  begin
    result := true;
  end
  else
  begin
    result := False;
  end;
end;
end.
