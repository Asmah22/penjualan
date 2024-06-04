unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  a:string;

implementation

uses
  Unit2, Unit3, Unit5, Unit6, Unit8;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  DataModule8.ZBarang.SQL.Clear;
  DataModule8.ZBarang.SQL.Add('insert into barang values(null, "'+Edit1.Text+'")');
  DataModule8.ZBarang.ExecSQL;

  DataModule8.ZBarang.SQL.Clear;
  DataModule8.ZBarang.SQL.Add('select * from barang');
  DataModule8.ZBarang.Open;
  ShowMessage('Data Berhasil disimpan!');
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  DataModule8.ZBarang.SQL.Clear;
  DataModule8.ZBarang.SQL.Add('update barang set name="'+Edit1.Text+'" where id= '+a);
  DataModule8.ZBarang.ExecSQL;

  DataModule8.ZBarang.SQL.Clear;
  DataModule8.ZBarang.SQL.Add('select * from barang');
  DataModule8.ZBarang.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  DataModule8.ZBarang.SQL.Clear;
  DataModule8.ZBarang.SQL.Add('delete from barang where id= '+a);
  DataModule8.ZBarang.ExecSQL;

  DataModule8.ZBarang.SQL.Clear;
  DataModule8.ZBarang.SQL.Add('select * from barang');
  DataModule8.ZBarang.Open;
  ShowMessage('Data Berhasil Didelete!');
end;

end.
