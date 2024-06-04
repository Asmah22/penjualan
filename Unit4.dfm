object Form4: TForm4
  Left = 523
  Top = 156
  Width = 557
  Height = 479
  Caption = 'BARANG'
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
    Left = 32
    Top = 32
    Width = 33
    Height = 16
    Caption = 'NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 400
    Width = 95
    Height = 16
    Caption = 'MASUKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 8
    Width = 55
    Height = 16
    Caption = 'BARCODE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 56
    Width = 71
    Height = 16
    Caption = 'HARGA JUAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 80
    Width = 68
    Height = 16
    Caption = 'HARGA BELI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 32
    Top = 104
    Width = 32
    Height = 16
    Caption = 'STOK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 32
    Top = 128
    Width = 75
    Height = 16
    Caption = 'KATEGORI ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 32
    Top = 152
    Width = 64
    Height = 16
    Caption = 'SATUAN ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 32
    Top = 176
    Width = 47
    Height = 16
    Caption = 'USER ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 32
    Top = 200
    Width = 71
    Height = 16
    Caption = 'SUPPLIER ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 128
    Top = 32
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 128
    Top = 232
    Width = 75
    Height = 25
    Caption = 'INSERT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 232
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 320
    Top = 232
    Width = 75
    Height = 25
    Caption = 'DELETE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 128
    Top = 272
    Width = 353
    Height = 120
    DataSource = DataModule8.dsbarang
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit2: TEdit
    Left = 128
    Top = 400
    Width = 265
    Height = 21
    TabOrder = 5
  end
  object Button4: TButton
    Left = 408
    Top = 400
    Width = 75
    Height = 25
    Caption = 'CARI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object Edit3: TEdit
    Left = 128
    Top = 8
    Width = 265
    Height = 21
    TabOrder = 7
  end
  object Edit4: TEdit
    Left = 128
    Top = 56
    Width = 265
    Height = 21
    TabOrder = 8
  end
  object Edit5: TEdit
    Left = 128
    Top = 80
    Width = 265
    Height = 21
    TabOrder = 9
  end
  object Edit6: TEdit
    Left = 128
    Top = 104
    Width = 265
    Height = 21
    TabOrder = 10
  end
  object Edit7: TEdit
    Left = 128
    Top = 128
    Width = 265
    Height = 21
    TabOrder = 11
  end
  object Edit8: TEdit
    Left = 128
    Top = 152
    Width = 265
    Height = 21
    TabOrder = 12
  end
  object Edit9: TEdit
    Left = 128
    Top = 176
    Width = 265
    Height = 21
    TabOrder = 13
  end
  object Edit10: TEdit
    Left = 128
    Top = 200
    Width = 265
    Height = 21
    TabOrder = 14
  end
end
