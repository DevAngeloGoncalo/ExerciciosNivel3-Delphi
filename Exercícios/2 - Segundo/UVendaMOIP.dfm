inherited VendaMOIP: TVendaMOIP
  Caption = 'VendaMOIP'
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel [5]
    Left = 152
    Top = 48
    Width = 116
    Height = 13
    Caption = 'N'#250'mero do Pedido MOIP'
  end
  object Label7: TLabel [6]
    Left = 152
    Top = 88
    Width = 123
    Height = 13
    Caption = 'Cod de Autoriza'#231#227'o MOIP'
  end
  object EditNumPedMOIP: TEdit [13]
    Left = 152
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object EditCodMOIP: TEdit [14]
    Left = 152
    Top = 104
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 7
  end
  inherited ButtonList: TButton
    TabOrder = 8
  end
  inherited ListBox1: TListBox
    TabOrder = 9
  end
end
