object DataModule8: TDataModule8
  OldCreateOrder = False
  Left = 645
  Top = 234
  Height = 271
  Width = 566
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\user\Desktop\VISUAL2\libmysql.dll'
    Left = 24
    Top = 24
  end
  object ZKategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from kategori')
    Params = <>
    Left = 96
    Top = 24
  end
  object ZSatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from satuan')
    Params = <>
    Left = 160
    Top = 24
  end
  object ZSupplier: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from supplier')
    Params = <>
    Left = 224
    Top = 24
  end
  object dskategori: TDataSource
    DataSet = ZKategori
    Left = 96
    Top = 104
  end
  object dssatuan: TDataSource
    DataSet = ZSatuan
    Left = 160
    Top = 104
  end
  object dssupplier: TDataSource
    DataSet = ZSupplier
    Left = 232
    Top = 104
  end
  object dskustomer: TDataSource
    DataSet = ZKustomer
    Left = 296
    Top = 104
  end
  object ZKustomer: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from kustomer')
    Params = <>
    Left = 288
    Top = 24
  end
  object ZBarang: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from barang')
    Params = <>
    Left = 360
    Top = 24
  end
  object dsbarang: TDataSource
    DataSet = ZBarang
    Left = 368
    Top = 104
  end
end
