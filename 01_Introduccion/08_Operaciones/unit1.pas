unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Calcular: TButton;
    edtMulM: TEdit;
    edtMulC: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Limpiar: TButton;
    edtInicio: TEdit;
    edtFin: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    memResultados: TMemo;
    procedure CalcularClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CalcularClick(Sender: TObject);
var
  Cont          : Integer;
  Ini           : Integer;
  Fin           : Integer;
  SumPares      : Integer;
  ContarImpares : Integer;
  ListaM        : String;
  Mx            : Integer;
  Min, Max      : Integer;
  Acum          : Integer;
  Mc, Mm        : Integer;
begin
  //Inicializamos variables
  Ini := StrToInt(edtInicio.Text);
  Fin := StrToInt(edtFin.Text);
  SumPares := 0;
  ContarImpares := 0;
  ListaM := '';
  Mx := 0;
  Min := Fin;
  Max := Ini;
  Acum := 0;
  Mc := StrToInt(edtMulC.Text);
  Mm := StrToInt(edtMulM.Text);


  //Comenzamos bucle
  For Cont := Ini to Fin do
    begin
      //Suma de pares e contar impares
      If Cont mod 2 = 0
        Then SumPares += Cont
        Else ContarImpares += 1;

      //Mostrar Múltiplos de Mm
      If Cont mod Mm = 0 then ListaM += IntToStr(Cont) + '  ';

      //Contar múltiplos de Mc
      If Cont mod Mc = 0 then Mx += 1;

      //Max y Min
      If Cont > Max then Max := Cont;
      If Cont < Min then Min := Cont;

      //Acumulamos valores para calcular media
      Acum += Cont;

    end;

  //Mostrar resultados
  memResultados.Lines.Add('RESULTADOS');
  memResultados.Lines.Add('**********');
  memResultados.Lines.Add('Suma de pares: ' + IntToStr(SumPares));
  memResultados.Lines.Add('Cantidad de impares: ' + IntToStr(ContarImpares));
  memResultados.Lines.Add('Múltiplos de ' + edtMulM.Text + ': ' + ListaM);
  memResultados.Lines.Add('Múltiplos de ' + edtMulC.Text + ': ' + IntToStr(Mx));
  memResultados.Lines.Add('Máximo: ' + IntToStr(Max));
  memResultados.Lines.Add('Mínimo: ' + IntToStr(Min));
  memResultados.Lines.Add('Media: ' + FloatToStr(Acum/(Max-Min)));
  memResultados.Lines.Add('');
end;

end.











