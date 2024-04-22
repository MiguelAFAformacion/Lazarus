unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  Vector : Array[1..10] of Integer;     //Definimos array de 10 elementos
  Cont   : Integer;
begin
  //Rellenamos array con valores aleatorios entre 1 y 100
  for Cont := 1 to 10 do Vector[Cont] := Random(100);

  //Mostramos valores del array por pantalla
  for Cont := 1 to 10 do Memo1.Lines.Add(IntToStr(Vector[Cont]));

end;

end.

