unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, odbcconn, SQLDB, Forms, Controls, Graphics, Dialogs,
  DBGrids, DBCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    ODBCConnection1: TODBCConnection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

end.

