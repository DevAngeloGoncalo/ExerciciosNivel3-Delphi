inherited VendaExterna: TVendaExterna
  Caption = 'VendaExterna'
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel [4]
    Left = 148
    Top = 8
    Width = 132
    Height = 13
    Caption = 'Nome do Vendedor Externo'
  end
  object Label7: TLabel [5]
    Left = 148
    Top = 48
    Width = 56
    Height = 13
    Caption = 'C'#243'digo DAV'
  end
  object EditVendedorExterno: TEdit [11]
    Left = 148
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object EditDAV: TEdit [12]
    Left = 148
    Top = 64
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 6
  end
  inherited ButtonList: TButton
    TabOrder = 7
  end
  inherited ListBox1: TListBox
    TabOrder = 8
  end
end
