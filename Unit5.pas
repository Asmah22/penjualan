unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    DISKRIPSI: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  a:string;

implementation

uses
  Unit4, Unit6, Unit7, Unit2, Unit8;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  DataModule8.Zsatuan.SQL.Clear;
  DataModule8.Zsatuan.SQL.Add('insert into satuan values(null, "'+edit1.Text+'")');
  DataModule8.Zsatuan.ExecSQL;

  DataModule8.Zsatuan.SQL.Clear;
  DataModule8.Zsatuan.SQL.Add('select * from satuan');
  DataModule8.Zsatuan.Open;
  ShowMessage('Data Berhasil disimpan!');
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  DataModule8.Zsatuan.SQL.Clear;
  DataModule8.Zsatuan.SQL.Add('update satuan set name="'+Edit1.text+'" where id= "'+a+'"');
  DataModule8.Zsatuan.ExecSQL;

  DataModule8.Zsatuan.SQL.Clear;
  DataModule8.Zsatuan.SQL.Add('select * from satuan');
  DataModule8.Zsatuan.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  DataModule8.Zsatuan.SQL.Clear;
  DataModule8.Zsatuan.SQL.Add('delete from satuan where id= '+a);
  DataModule8.Zsatuan.ExecSQL;

  DataModule8.Zsatuan.SQL.Clear;
  DataModule8.Zsatuan.SQL.Add('select * from satuan');
  DataModule8.Zsatuan.Open;
  ShowMessage('Data Berhasil Didelete!');
end;

end.
