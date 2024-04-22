unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Inicialización del timer
  Timer1.Interval := 1000; // Actualiza cada segundo
  Timer1.Enabled := True;
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
var
  Segundos: Integer;
  Radio: Integer;
  Angulo: Double;
  x, y: Integer;
begin
  // Obtener el segundo actual
  Segundos := StrToInt(FormatDateTime('s', Now));

  // Definir el radio del reloj
  //Radio := Min(PaintBox1.Width, PaintBox1.Height) div 2;
  Radio := PaintBox1.Height div 2;

  // Calcular las coordenadas del extremo del segundero
  Angulo := Segundos * (2 * Pi / 60) - (Pi / 2);
  x := Round(Radio * Cos(Angulo));
  y := Round(Radio * Sin(Angulo));

  // Dibujar el reloj analógico
  PaintBox1.Canvas.Brush.Color := clWhite;
  PaintBox1.Canvas.FillRect(PaintBox1.ClientRect);
  PaintBox1.Canvas.Ellipse(PaintBox1.ClientRect);

  // Dibujar el segundero
  PaintBox1.Canvas.MoveTo(Radio, Radio);
  PaintBox1.Canvas.LineTo(Radio + x, Radio + y);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  // Redibujar el reloj cada segundo
  PaintBox1.Repaint;
end;

end.

