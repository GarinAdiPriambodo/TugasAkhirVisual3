object Form3: TForm3
  Left = 300
  Top = 206
  Width = 1044
  Height = 540
  Caption = 'Main Menu'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Comic Sans MS'
  Font.Style = [fsBold]
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 23
  object mm1: TMainMenu
    Left = 112
    Top = 56
    object FORMS1: TMenuItem
      Caption = 'FORMS'
      object USER1: TMenuItem
        Caption = 'USER'
        OnClick = USER1Click
      end
      object AMU1: TMenuItem
        Caption = 'TAMU'
        OnClick = AMU1Click
      end
      object PEGAWAI1: TMenuItem
        Caption = 'PEGAWAI'
        OnClick = PEGAWAI1Click
      end
      object KAMAR1: TMenuItem
        Caption = 'KAMAR'
        OnClick = KAMAR1Click
      end
      object RESERVASI1: TMenuItem
        Caption = 'RESERVASI'
        OnClick = RESERVASI1Click
      end
      object CHECKIN1: TMenuItem
        Caption = 'CHECK IN'
      end
      object CHECKOUT1: TMenuItem
        Caption = 'CHECK OUT'
      end
      object FASILITAS1: TMenuItem
        Caption = 'FASILITAS'
      end
    end
    object LOGOUT1: TMenuItem
      Caption = 'LOG OUT'
      OnClick = LOGOUT1Click
    end
    object EXIT1: TMenuItem
      Caption = 'EXIT'
      OnClick = EXIT1Click
    end
  end
end
