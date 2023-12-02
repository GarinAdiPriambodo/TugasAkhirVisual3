unit Pegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm6 = class(TForm)
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    e1: TEdit;
    e2: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    e3: TEdit;
    e4: TEdit;
    cbb1: TComboBox;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    dg1: TDBGrid;
    frxdDB1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure bersih;
    procedure enable;
    procedure setawal;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure b6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  id : string;

implementation

{$R *.dfm}

{ TForm6 }

procedure TForm6.bersih;
begin
e1.Clear;
e2.Clear;
e3.Clear;
e4.Clear;
cbb1.text := '';
end;

procedure TForm6.enable;
begin
e1.Enabled:= True;
e2.Enabled:= True;
e3.Enabled:= True;
e4.Enabled:= True;
cbb1.Enabled:= True;
end;

procedure TForm6.setawal;
begin
bersih;

e1.Enabled:= false;
e2.Enabled:= false;
e3.Enabled:= false;
e4.Enabled:= false;
cbb1.Enabled:= false;


b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
end;

procedure TForm6.b1Click(Sender: TObject);
begin
bersih;

b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;

enable;
end;

procedure TForm6.b2Click(Sender: TObject);
begin
if (e1.Text ='')or(e2.Text= '')or (e3.Text= '')or (e4.Text ='') or (cbb1.Text= '')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('no_id',e2.Text,[])) and (zqry1.Locate('nama',e3.Text,[])) then
begin
ShowMessage('DATA WALI KELAS SUDAH DIGUNAKAN');
setawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tb_pegawai values (null,"'+e1.Text+'","'+e2.Text+'","'+e3.Text+'","'+e4.Text+'","'+cbb1.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tb_pegawai');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
setawal;

end;
end;

procedure TForm6.dg1CellClick(Column: TColumn);
begin
enable;
b1.Enabled:= False;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
e1.Text:= zqry1.FieldList[1].AsString;
e2.Text:= zqry1.FieldList[2].AsString;
e3.Text:= zqry1.FieldList[3].AsString;
e4.Text:= zqry1.FieldList[4].AsString;
cbb1.Text:= zqry1.FieldList[5].AsString;
end;

procedure TForm6.b3Click(Sender: TObject);
begin
if (e1.Text ='')or(e2.Text= '')or (e3.Text= '')or (e4.Text ='') or (cbb1.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (e1.Text = zqry1.Fields[2].AsString) and (e2.Text = zqry1.Fields[3].AsString) and (e3.Text = zqry1.Fields[4].AsString) and (e4.Text = zqry1.Fields[5].AsString) and (cbb1.Text = zqry1.Fields[6].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
setawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_pegawai').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tb_pegawai set no_id= "'+e1.Text+'",nama="'+e2.Text+'",alamat="'+e3.Text+'",no_hp="'+e4.Text+'",jabatan="'+cbb1.Text+'" where id_pegawai="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tb_pegawai');
zqry1.Open;
setawal;
end;
end;

procedure TForm6.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_pegawai').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tb_pegawai where id_pegawai="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tb_pegawai');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
setawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
setawal;
end;
end;

procedure TForm6.b5Click(Sender: TObject);
begin
setawal;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
setawal;
end;

procedure TForm6.b6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
