unit CadastroVendedorCliente;

interface

uses
  UController,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabCliente: TTabSheet;
    TabVendedor: TTabSheet;
    Panel1: TPanel;
    ButtonSave: TButton;
    EditNome: TEdit;
    EditIdade: TEdit;
    Label1: TLabel;
    Label6: TLabel;
    EditVencimento: TEdit;
    EditEndereco: TEdit;
    Label2: TLabel;
    ListBox1: TListBox;
    ButtonList: TButton;
    EditComissao: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    procedure ButtonSaveClick(Sender: TObject);
    procedure ButtonListClick(Sender: TObject);

  private
    { Private declarations }
    procedure limpar;
  public
    { Public declarations }
    lista: array of string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonListClick(Sender: TObject);
var
  Pessoa: TPessoa;
  i : integer;
begin
  ListBox1.Clear;
  Pessoa := TPessoa.Create;
  for i := 0 to Length(lista) - 1 do
  begin
    ListBox1.Items.Add(lista[i]);
  end;
end;

procedure TForm1.ButtonSaveClick(Sender: TObject);
var
  PessoaCli: TCliente;
  PessoaVen: TVendedor;

begin
  if TabCliente.Visible = true then
  begin
    PessoaCli := TCliente.Create;
    PessoaCli.nome := EditNome.Text;
    PessoaCli.idade := StrToint(EditIdade.Text);
    PessoaCli.dia := StrToint(EditVencimento.Text);
    PessoaCli.endereco := EditEndereco.Text;

    if PessoaCli.Cadastro then
    begin
      SetLength(lista, length(lista) + 1);
      lista[length(lista) - 1] := PessoaCli.vetor[0];
      limpar;
    end;
  end
  else
  begin
    PessoaVen := TVendedor.Create;
    PessoaVen.nome := EditNome.Text;
    PessoaVen.idade := StrToint(EditIdade.Text);
    PessoaVen.comissao := StrToCurr(EditComissao.Text);
    PessoaVen.tipo := ComboBox1.Text;

    if PessoaVen.Cadastro then
    begin
      SetLength(lista, length(lista) + 1);
      lista[length(lista) - 1] := PessoaVen.vetor[0];
      limpar;
    end;
  end;
end;

procedure TForm1.limpar;
begin
  EditNome.Clear;
  EditIdade.Clear;
  EditVencimento.Clear;
  EditEndereco.Clear;
  EditComissao.Clear;
end;

end.
