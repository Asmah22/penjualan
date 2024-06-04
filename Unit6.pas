unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
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
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
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
  Form6: TForm6;
  a:string;

implementation

uses Unit8, Unit7;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  DataModule8.Zsupplier.SQL.Clear;
  DataModule8.Zsupplier.SQL.Add('insert into supplier values(null, "'+edit1.Text+'")');
  DataModule8.Zsupplier.ExecSQL;

  DataModule8.Zsupplier.SQL.Clear;
  DataModule8.Zsupplier.SQL.Add('select * from supplier');
  DataModule8.Zsupplier.Open;
  ShowMessage('Data Berhasil disimpan!');
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  DataModule8.ZSupplier.SQL.Clear;
  DataModule8.ZSupplier.SQL.Add('update supplier set name="'+Edit1.text+'" where id= "'+a+'"');
  DataModule8.ZSupplier.ExecSQL;

  DataModule8.ZSupplier.SQL.Clear;
  DataModule8.ZSupplier.SQL.Add('select * from satuan');
  DataModule8.ZSupplier.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  DataModule8.ZSupplier.SQL.Clear;
  DataModule8.ZSupplier.SQL.Add('delete from supplier where id= '+a);
  DataModule8.ZSupplier.ExecSQL;

  DataModule8.ZSupplier.SQL.Clear;
  DataModule8.ZSupplier.SQL.Add('select * from supplier');
  DataModule8.ZSupplier.Open;
  ShowMessage('Data Berhasil Didelete!');
end;

end.
