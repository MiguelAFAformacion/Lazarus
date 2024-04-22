unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    btnAdivinar: TBitBtn;
    edtNum: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    lblMensaje: TLabel;
    Label2: TLabel;
    lblMensaje2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnAdivinarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

  numAdivinar : Integer;
  intentos    : Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  min      : Integer;
  max      : Integer;
  //aleatorio: Integer;
begin
  //Inicializaciones
  Randomize;
  intentos := 0;

  min := 1;
  max := 10;

  numAdivinar := Random(max - min +1) + min;

  label2.Caption := IntToStr(numAdivinar);


end;

procedure TForm1.btnAdivinarClick(Sender: TObject);
var
  num : Integer;
begin
  num := StrToInt(edtNum.Text);

  intentos := intentos + 1;
  label1.Caption := IntToStr(intentos);

  if (num = numAdivinar) then
    begin
      lblMensaje.Caption:= 'Enhorabuena!!!! Has acertado' ;
      lblMensaje2.Caption := 'Has necesitado ' + IntToStr(intentos) + ' intentos';
    end
  else
    if (num > numAdivinar) then
      begin
        lblMensaje.Caption:= 'Te has pasado...' ;
      end
    else
      begin
        lblMensaje.Caption:= 'Te has quedado corto...' ;
      end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  lblMensaje.Caption := 'Bienvenido al juego';
  lblMensaje2.Caption := 'Inténtalo si te atreves';
end;

end.





























