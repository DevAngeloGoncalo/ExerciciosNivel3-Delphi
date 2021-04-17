unit UController;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls;

type
  TPessoa = class(TObject)

  protected
    function Salvar: Boolean; virtual;
    function Verificar: Boolean; virtual;

  public
    vetor: array of string;
    nome: string;
    idade: integer;
    function Cadastro: Boolean;

  end;

Type
  TCliente = class(TPessoa)

  protected
    function Salvar: Boolean; override;
    function Verificar: Boolean; override;

  public
    dia: integer;
    endereco: string;

  end;

Type
  TVendedor = class(TPessoa)

  protected
    function Salvar: Boolean; override;
    function Verificar: Boolean; override;

  public
    comissao: Currency;
    tipo: string;

  end;

  // ------------------------------------------------------------------------

implementation

{ TPessoa }

function TPessoa.Cadastro: Boolean;
begin
  if Verificar then
  begin
    result := true;
  end
  else
  begin
    result := false;
  end;
end;

function TPessoa.Salvar: Boolean;

begin
  SetLength(vetor, length(vetor) + 1);
  vetor[length(vetor) - 1] := ' Nome: ' + nome + '| Idade: ' + IntToStr(idade);
  result := true;
end;

function TPessoa.Verificar: Boolean;
begin
  if (nome <> ' ') and (idade > 0) and (idade <= 130) then
  begin
    result := true;
  end
  else
  begin
    result := false;
  end;
end;

{ TCliente }

function TCliente.Salvar: Boolean;
begin
  if inherited then
  begin
    vetor[length(vetor) - 1] := 'Cliente - ' + vetor[length(vetor) - 1] +
      '| Dia: ' + IntToStr(dia) + '| Endereço: ' + endereco;
    result := true;
  end
  else
  begin
    result := false;
  end;

end;

function TCliente.Verificar: Boolean;
begin
  if inherited then
  begin
    if (dia > 0) and (dia <= 31) and (endereco <> '') then
    begin
      if Salvar then
      begin
        result := true;
      end
      else
      begin
        result := false;
      end;
    end
    else
    begin
      result := false;
    end;
  end
  else
  begin
    result := false;
  end;
end;

{ TVendedor }

function TVendedor.Salvar: Boolean;
begin
  if inherited then
  begin
    vetor[length(vetor) - 1] := 'Vendedor - ' + vetor[length(vetor) - 1] +
      '| Comissão: ' + CurrToStr(comissao) + '% | Tipo de Vendedor: ' + tipo;
    result := true;
  end
  else
  begin
    result := false;
  end;

end;

function TVendedor.Verificar: Boolean;
begin
  if inherited then
  begin
    if (comissao > 0) and (tipo <> '') then
    begin
      if Salvar then
      begin
        result := true;
      end
      else
      begin
        result := false;
      end;
    end
    else
    begin
      result := false;
    end;
  end
  else
  begin
    result := false;
  end;
end;

end.
