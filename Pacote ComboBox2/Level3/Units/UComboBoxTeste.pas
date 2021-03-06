unit UComboBoxTeste;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls;

type
  TComboBoxTeste = class(TComboBox)
  private
    { Private declarations }
    FItemsKey: TStringList;
    function getItemsKey: TStringList;
    procedure setItemsKey(Valor: TStringList);
  protected
    { Protected declarations }
  public
    { Public declarations }
    function getKey: string;
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property ItemsKey: TStringList read getItemsKey write setItemsKey;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TComboBoxTeste]);
end;

{ TComboBoxTeste }

constructor TComboBoxTeste.Create(AOwner: TComponent);
begin
  inherited;
  FItemsKey := TStringList.Create;
end;

function TComboBoxTeste.getItemsKey: TStringList;
begin
  Result := FItemsKey;
end;

function TComboBoxTeste.getKey: string;
begin
  result := ItemsKey[ItemIndex];
end;

procedure TComboBoxTeste.setItemsKey(Valor: TStringList);
begin
  if Assigned(FItemsKey) then
    FItemsKey.Assign(Valor)
  else
    FItemsKey := Valor;
end;

end.
