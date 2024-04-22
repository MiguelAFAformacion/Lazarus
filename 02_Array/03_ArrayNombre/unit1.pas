unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCrearNom: TButton;
    btnCrearApe: TButton;
    btnMostrarNom: TButton;
    btnMostrarApe: TButton;
    btnPersonas: TButton;
    btnPersonasC: TButton;
    cmbNPersonas: TComboBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    memResultados: TMemo;
    procedure btnCrearApeClick(Sender: TObject);
    procedure btnCrearNomClick(Sender: TObject);
    procedure btnMostrarApeClick(Sender: TObject);
    procedure btnMostrarNomClick(Sender: TObject);
    procedure btnPersonasCClick(Sender: TObject);
    procedure btnPersonasSClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Nombres   : Array [1..10] of String;
  Apellidos : Array [1..10] of String;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnCrearNomClick(Sender: TObject);
begin
  Nombres[1]  := 'Ana';
  Nombres[2]  := 'Belén';
  Nombres[3]  := 'Carlos';
  Nombres[4]  := 'Diana';
  Nombres[5]  := 'Ernesto';
  Nombres[6]  := 'Francisco';
  Nombres[7]  := 'Gemma';
  Nombres[8]  := 'Hildegarda';
  Nombres[9]  := 'Ildefonso';
  Nombres[10] := 'Juana';

  memResultados.Lines.Add('Nombres generados..' + #13#10);
end;

procedure TForm1.btnMostrarApeClick(Sender: TObject);
var
  Cont : Integer;
begin
  For Cont := 1 to 10 do
    begin
      memResultados.Lines.Add('Apellido en posición ' + IntToStr(Cont) + ': ' + Apellidos[Cont]);
    end;
  memResultados.Lines.Add('Apellidos generados..' + #13#10);
end;

procedure TForm1.btnCrearApeClick(Sender: TObject);
begin
  Apellidos[1]  := 'Pérez';
  Apellidos[2]  := 'López';
  Apellidos[3]  := 'Gutiérrez';
  Apellidos[4]  := 'Santos';
  Apellidos[5]  := 'Fernández';
  Apellidos[6]  := 'Hernández';
  Apellidos[7]  := 'Gómez';
  Apellidos[8]  := 'Salvatierra';
  Apellidos[9]  := 'Carballo';
  Apellidos[10] := 'Robles';

  memResultados.Lines.Add('Apellidos generados..' + #13#10);
end;

procedure TForm1.btnMostrarNomClick(Sender: TObject);
var
  Cont : Integer;
begin
  For Cont := 1 to 10 do
    begin
      memResultados.Lines.Add('Nombre en posición ' + IntToStr(Cont) + ': ' + Nombres[Cont]);
    end;
  memResultados.Lines.Add('Apellidos generados..' + #13#10);
end;

procedure TForm1.btnPersonasCClick(Sender: TObject);
var
  Cont    : Integer;
  azar    : Integer;
  Veces   : Integer;
  NombreC : String;
begin
  //Elegimos al azar un nombre y un apellido
  Veces := StrToInt(cmbNPersonas.Text);
  Randomize;

  for Cont := 1 to Veces do
    begin
       NombreC := '';
      //Generamos nombre compuesto
      azar := Random(100) + 1;
      if azar <= 20 then
        begin
          NombreC := ' ' + Nombres[Random(10) + 1];
        end;
      //azar := Random(10) + 1;
      memResultados.lines.Add(Nombres[Random(10) + 1] +
                              NombreC +
                              ' ' +
                              Apellidos[Random(10) + 1] +
                              ' ' +
                              Apellidos[Random(10) + 1]);
    end;

  memResultados.Lines.Add('Personas generados..' + #13#10);
end;

procedure TForm1.btnPersonasSClick(Sender: TObject);
var
  Cont    : Integer;
  azar    : Integer;
  Veces   : Integer;
begin
  //Elegimos al azar un nombre y un apellido
  Veces := StrToInt(cmbNPersonas.Text);
  Randomize;

  for Cont := 1 to Veces do
    begin
      azar := Random(10) + 1;
      memResultados.lines.Add(Nombres[Azar] + ' ' + Apellidos[Azar]);
    end;

  memResultados.Lines.Add('Personas generados..' + #13#10);
end;

end.

