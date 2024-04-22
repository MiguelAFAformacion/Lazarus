unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

const
  MAX = 10;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnOrdenar: TButton;
    btnGenerar: TButton;
    btnMostrar: TButton;
    btnCalcular: TButton;
    memResultados: TMemo;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnGenerarClick(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);
    procedure btnOrdenarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Valores : Array [1..MAX] of Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnGenerarClick(Sender: TObject);
var
  Cont : Integer;
begin
  //Generamos valores aleatorios y los almacenamos en el array
  for Cont := 1 to MAX do Valores[Cont] := Random(10000);

  memResultados.Lines.Add('Valores aleatorios generados' + #13#10);

end;

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  Cont   : Integer;
  Vmax   : Integer;
  Vmin   : Integer;
  Acum   : Integer;

begin
  //Inicializamos variables
  Vmax := Valores[1];
  Vmin := Valores[1];
  Acum := 0;

  //Procesamos valores del array
  for Cont := 1 to MAX do
    begin
      //Calculamos Máximo
      if Valores[Cont] > Vmax then Vmax := Valores[Cont];
      //Calculamos Mínimo
      if Valores[Cont] < Vmin then Vmin := Valores[Cont];
      //Hacemos sumatorio de los valores
      Acum += Valores[Cont];

    end;

  //Mostramos resultados
  memResultados.Lines.Add('RESULTADOS');
  memResultados.Lines.Add('Máximo: ' + IntToStr(Vmax));
  memResultados.Lines.Add('Mínimo: ' + IntToStr(Vmin));
  memResultados.Lines.Add('Media: ' + FloatToStr(Acum/MAX));

end;

procedure TForm1.btnMostrarClick(Sender: TObject);
var
  Cont : Integer;
begin
  memResultados.Lines.Add('Valores del Array');
  for Cont := 1 to MAX do memResultados.Lines.Add(IntToStr(Valores[Cont]));
  memResultados.Lines.Add(#13);
end;

procedure TForm1.btnOrdenarClick(Sender: TObject);
begin
  ShowMessage('Pendente de facer....');
end;

end.

