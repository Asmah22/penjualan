unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm7 = class(TForm)
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
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  a:string;

implementation

uses
  Unit8;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
  DataModule8.ZKustomer.SQL.Clear;
  DataModule8.ZKustomer.SQL.Add('insert into kustomer values(null, "'+edit1.Text+'")');
  DataModule8.ZKustomer.ExecSQL;

  DataModule8.ZKustomer.SQL.Clear;
  DataModule8.ZKustomer.SQL.Add('select * from kustomer');
  DataModule8.ZKustomer.Open;
  ShowMessage('Data Berhasil disimpan!');
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  DataModule8.ZKustomer.SQL.Clear;
  DataModule8.ZKustomer.SQL.Add('update kustomer set name="'+Edit1.text+'" where id= "'+a+'"');
  DataModule8.ZKustomer.ExecSQL;

  DataModule8.ZKustomer.SQL.Clear;
  DataModule8.ZKustomer.SQL.Add('select * from kustomer');
  DataModule8.ZKustomer.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
  DataModule8.ZKustomer.SQL.Clear;
  DataModule8.ZKustomer.SQL.Add('delete from kustomer where id= '+a);
  DataModule8.ZKustomer.ExecSQL;

  DataModule8.ZKustomer.SQL.Clear;
  DataModule8.ZKustomer.SQL.Add('select * from kustomer');
  DataModule8.ZKustomer.Open;
  ShowMessage('Data Berhasil Didelete!');
end;

end.
