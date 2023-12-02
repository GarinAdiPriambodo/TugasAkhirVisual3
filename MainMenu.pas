unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm3 = class(TForm)
    mm1: TMainMenu;
    FORMS1: TMenuItem;
    LOGOUT1: TMenuItem;
    EXIT1: TMenuItem;
    USER1: TMenuItem;
    AMU1: TMenuItem;
    PEGAWAI1: TMenuItem;
    KAMAR1: TMenuItem;
    RESERVASI1: TMenuItem;
    CHECKIN1: TMenuItem;
    CHECKOUT1: TMenuItem;
    FASILITAS1: TMenuItem;
    procedure USER1Click(Sender: TObject);
    procedure LOGOUT1Click(Sender: TObject);
    procedure EXIT1Click(Sender: TObject);
    procedure AMU1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses User, Login, Tamu;

{$R *.dfm}

procedure TForm3.USER1Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm3.LOGOUT1Click(Sender: TObject);
begin
hide;
form1.Show;
end;

procedure TForm3.EXIT1Click(Sender: TObject);
begin
if MessageDlg('APAKAH INGIN MENUTUP APLIKASI INI ?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
Application.Terminate;
end else
begin
hide;
form3.ShowModal;
end;
end;

procedure TForm3.AMU1Click(Sender: TObject);
begin
form5.showmodal;
end;

end.
