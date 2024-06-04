unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses Unit4, Unit1, Unit2, Unit8;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  DataModule8.Zkategori.SQL.Clear;
  DataModule8.Zkategori.SQL.Add('insert into kategori values(null, "'+Edit1.Text+'")');
  DataModule8.Zkategori.ExecSQL;

  DataModule8.Zkategori.SQL.Clear;
  DataModule8.Zkategori.SQL.Add('select * from kategori');
  DataModule8.Zkategori.Open;
  ShowMessage('Data Berhasil disimpan!');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  DataModule8.Zkategori.SQL.Clear;
  DataModule8.Zkategori.SQL.Add('update kategori set name="'+Edit1.Text+'" where id= '+a);
  DataModule8.Zkategori.ExecSQL;

  DataModule8.Zkategori.SQL.Clear;
  DataModule8.Zkategori.SQL.Add('select * from kategori');
  DataModule8.Zkategori.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  DataModule8.Zkategori.SQL.Clear;
  DataModule8.Zkategori.SQL.Add('delete from kategori where id= '+a);
  DataModule8.Zkategori.ExecSQL;

  DataModule8.Zkategori.SQL.Clear;
  DataModule8.Zkategori.SQL.Add('select * from kategori');
  DataModule8.Zkategori.Open;
  ShowMessage('Data Berhasil Didelete!');
end;


end.
