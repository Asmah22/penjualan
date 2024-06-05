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
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses Unit4, Unit1, Unit2, Unit8, Unit5;

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
  with DataModule8.ZKategori do
  begin
   SQL.Clear;
   SQL.Add('update kategori set name="'+Edit1.text+'" where id= "'+a+'"');
   ExecSQL;

   SQL.Clear;
   SQL.Add('select * from kategori');
   Open;
  end;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  with DataModule8.ZKategori do
  begin
    SQL.Clear;
    SQL.Add('delete from kategori where id= "'+a+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from kategori');
    Open
  end;
  ShowMessage('Data Berhasil DiDelete!');
end;


procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule8.ZKategori.Fields[1].AsString;
a:= DataModule8.ZKategori.Fields[0].AsString;
end;

end.
