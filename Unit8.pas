unit Unit8;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule8 = class(TDataModule)
    ZConnection1: TZConnection;
    ZKategori: TZQuery;
    ZSatuan: TZQuery;
    ZSupplier: TZQuery;
    dskategori: TDataSource;
    dssatuan: TDataSource;
    dssupplier: TDataSource;
    dskustomer: TDataSource;
    ZKustomer: TZQuery;
    ZBarang: TZQuery;
    dsbarang: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule8: TDataModule8;

implementation

{$R *.dfm}

end.
