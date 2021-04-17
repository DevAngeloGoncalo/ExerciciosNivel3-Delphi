object VendaPrincipal: TVendaPrincipal
  Left = 0
  Top = 0
  Caption = 'VendaPrincipal'
  ClientHeight = 179
  ClientWidth = 849
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 87
    Height = 13
    Caption = 'N'#250'mero do Pedido'
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 91
    Height = 13
    Caption = 'Nome do Vendedor'
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 74
    Height = 13
    Caption = 'Valor do Pedido'
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 78
    Height = 13
    Caption = 'Nome do Cliente'
  end
  object ButtonSalvar: TButton
    Left = 135
    Top = 146
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 0
    OnClick = ButtonSalvarClick
  end
  object EditNumPedido: TEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EditNomeVendedor: TEdit
    Left = 8
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EditValorPedido: TEdit
    Left = 8
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EditNomeCliente: TEdit
    Left = 8
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object ButtonList: TButton
    Left = 216
    Top = 146
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 5
    OnClick = ButtonListClick
  end
  object ListBox1: TListBox
    Left = 297
    Top = 8
    Width = 544
    Height = 163
    ItemHeight = 13
    TabOrder = 6
  end
end
