object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 277
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 232
    Top = 0
    Width = 346
    Height = 113
    ActivePage = TabVendedor
    TabOrder = 0
    object TabCliente: TTabSheet
      Caption = 'Cliente'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 77
      object Label2: TLabel
        Left = 171
        Top = 18
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label3: TLabel
        Left = 3
        Top = 19
        Width = 123
        Height = 13
        Caption = 'Melhor Dia de Vencimento'
      end
      object EditVencimento: TEdit
        Left = 3
        Top = 38
        Width = 126
        Height = 21
        TabOrder = 0
      end
      object EditEndereco: TEdit
        Left = 171
        Top = 37
        Width = 126
        Height = 21
        TabOrder = 1
      end
    end
    object TabVendedor: TTabSheet
      Caption = 'Vendedor'
      ImageIndex = 1
      object Label4: TLabel
        Left = 3
        Top = 18
        Width = 114
        Height = 13
        Caption = 'Percentual de Comiss'#227'o'
      end
      object Label5: TLabel
        Left = 171
        Top = 17
        Width = 84
        Height = 13
        Caption = 'Tipo de Vendedor'
      end
      object EditComissao: TEdit
        Left = 3
        Top = 37
        Width = 126
        Height = 21
        TabOrder = 0
      end
      object ComboBox1: TComboBox
        Left = 177
        Top = 36
        Width = 88
        Height = 21
        Style = csDropDownList
        TabOrder = 1
        Items.Strings = (
          'I - Interno'
          'E - Externo')
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 226
    Height = 113
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label6: TLabel
      Left = 111
      Top = 8
      Width = 28
      Height = 13
      Caption = 'Idade'
    end
    object ButtonSave: TButton
      Left = 14
      Top = 54
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = ButtonSaveClick
    end
    object EditNome: TEdit
      Left = 16
      Top = 27
      Width = 73
      Height = 21
      TabOrder = 1
    end
    object EditIdade: TEdit
      Left = 111
      Top = 27
      Width = 73
      Height = 21
      TabOrder = 2
    end
    object ButtonList: TButton
      Left = 111
      Top = 54
      Width = 75
      Height = 25
      Caption = 'Listar'
      TabOrder = 3
      OnClick = ButtonListClick
    end
  end
  object ListBox1: TListBox
    Left = -1
    Top = 115
    Width = 579
    Height = 159
    ItemHeight = 13
    TabOrder = 2
  end
end
