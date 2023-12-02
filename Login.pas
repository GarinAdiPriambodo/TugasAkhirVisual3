unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm1 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    e1: TEdit;
    e2: TEdit;
    b1: TButton;
    b2: TButton;
    l3: TLabel;
    con1: TZConnection;
    zqry1: TZQuery;
    b3: TButton;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses MainMenu, Daftar;

{$R *.dfm}

procedure TForm1.b1Click(Sender: TObject);
begin
with zqry1 do begin
SQL.Clear;
SQL.Add('select * from tb_user where username='+QuotedStr(e1.Text));
open;
end;
//end with
//jika tidak ditemukan data yang dicari
//maka tampilkan pesan

if zqry1.RecordCount=0
then
Application.MessageBox('Maaf User Name Tidak Ditemukan','Informasi',MB_OK or MB_ICONINFORMATION)
else
begin
if zqry1.FieldByName('password').AsString<>e2.Text
then
Application.MessageBox('Pastikan Password yang Anda Masukkan Benar','error',MB_OK or MB_ICONERROR)
else
begin
hide;
Form3.Show;
end;
end;
end;

procedure TForm1.b2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.b3Click(Sender: TObject);
begin
Hide;
form2.ShowModal;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
e1.text:='';
e2.text:='';
end;

end.
