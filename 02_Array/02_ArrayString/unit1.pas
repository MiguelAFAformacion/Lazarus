unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnGenerar: TButton;
    btnMostrar: TButton;
    btnCambiar: TButton;
    edtDia: TEdit;
    edtNombre: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    memResultados: TMemo;
    procedure btnCambiarClick(Sender: TObject);
    procedure btnGenerarClick(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Semana : Array [1..7] of String;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnGenerarClick(Sender: TObject);
begin
  Semana[1] := 'Lunes';
  Semana[2] := 'Martes';
  Semana[3] := 'Miércoles';
  Semana[4] := 'Jueves';
  Semana[5] := 'Viernes';
  Semana[6] := 'Sábado';
  Semana[7] := 'Domingo';

  memResultados.Lines.Add('Array generado...');
end;

procedure TForm1.btnCambiarClick(Sender: TObject);
var
  pos   : integer;
  valor : String;
begin
  pos := StrToInt(edtDia.Text);
  valor := edtNombre.Text;

  Semana[pos] := valor;

  memResultados.Lines.Add('Valor modificado...');
end;

procedure TForm1.btnMostrarClick(Sender: TObject);
var
  Cont  : Integer;
  Linea : String;
begin
  For Cont := 1 to 7 do
    begin
      Linea := 'El día ' +
               IntToStr(Cont) +
               ' de la semana es: ' +
               Semana[Cont];
      memResultados.Lines.Add(Linea);
    end;
end;

end.








