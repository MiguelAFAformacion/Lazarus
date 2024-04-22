unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnPulsar: TButton;
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
  lblTexto.Caption := 'Has pulsado el botón...';
end;

end.

