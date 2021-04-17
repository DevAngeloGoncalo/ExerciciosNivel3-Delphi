unit UTestCMX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UComboBoxTeste;

type
  TForm7 = class(TForm)
    ComboBoxTeste1: TComboBoxTeste;
    ComboBox1: TComboBox;
    procedure ComboBoxTeste1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.ComboBox1Change(Sender: TObject);
begin
  showmessage(IntToStr(ComboBox1.ItemIndex));
end;

procedure TForm7.ComboBoxTeste1Change(Sender: TObject);
begin
  ShowMessage(ComboBoxTeste1.getKey);
end;

end.
