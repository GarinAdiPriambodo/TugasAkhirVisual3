unit Fasilitias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm11 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l9: TLabel;
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
    e5: TEdit;
    e6: TEdit;
    dg1: TDBGrid;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    frxdDBfrxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

end.
