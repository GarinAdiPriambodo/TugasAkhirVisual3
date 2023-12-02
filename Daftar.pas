unit Daftar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls;

type
  TForm2 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    e1: TEdit;
    e2: TEdit;
    cbb1: TComboBox;
    cbb2: TComboBox;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    zqry1: TZQuery;
    con1: TZConnection;
    procedure setawal;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Login;

{$R *.dfm}

procedure TForm2.b1Click(Sender: TObject);
begin
if (e1.Text= '')or (e2.Text ='')or(cbb1.Text= '')or (cbb2.Text ='')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('username',e1.Text,[])) and (zqry1.Locate('password',e2.Text,[])) then
begin
ShowMessage('DATA USER SUDAH DIGUNAKAN');
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tb_user values (null,"'+e1.Text+'","'+e2.Text+'","'+cbb1.Text+'","'+cbb2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tb_user');
zqry1.Open;
Application.MessageBox('BERHASIL MENDAFTAR','Informasi',MB_OK or MB_ICONINFORMATION)

end;
setawal;
end;

procedure TForm2.setawal;
begin
e1.Clear;
e2.Clear;
cbb1.text:='';
cbb2.text:='';
end;

procedure TForm2.b2Click(Sender: TObject);
begin
setawal;
end;

procedure TForm2.b3Click(Sender: TObject);
begin
close;
form1.Show;
end;

end.
