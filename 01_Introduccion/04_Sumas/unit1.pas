unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSumar: TButton;
    edtNum1: TEdit;
    edtNum2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblResultado: TLabel;
    procedure btnSumarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnSumarClick(Sender: TObject);
var
  Resul : Integer;
begin
   Resul := StrToInt(edtNum1.Text) + StrToInt(edtNum2.Text);

   lblResultado.Caption:= IntToStr(Resul);
end;

end.

