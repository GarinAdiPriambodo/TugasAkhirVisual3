program Project1;

uses
  Forms,
  Login in 'Login.pas' {Form1},
  Daftar in 'Daftar.pas' {Form2},
  MainMenu in 'MainMenu.pas' {Form3},
  User in 'User.pas' {Form4},
  Tamu in 'Tamu.pas' {Form5},
  Pegawai in 'Pegawai.pas' {Form6},
  Kamar in 'Kamar.pas' {Form7},
  Reservasi in 'Reservasi.pas' {Form8},
  CheckIn in 'CheckIn.pas' {Form9},
  CheckOut in 'CheckOut.pas' {Form10},
  Fasilitias in 'Fasilitias.pas' {Form11};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.Run;
end.
