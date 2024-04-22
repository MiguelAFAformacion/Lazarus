unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnPulsar: TButton;
    edtTexto: TEdit;
    Label1: TLabel;
    lblTexto: TLabel;
    procedure btnPulsarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnPulsarClick(Sender: TObject);
begin
  lblTexto.Caption := edtTexto.Text;
  edtTexto.Clear;
end;

end.

