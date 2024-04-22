unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  ExtCtrls, Spin;

const
  MAX = 10;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    btnCalcular: TBitBtn;
    edtBuscar: TEdit;
    edtBorrar: TEdit;
    edtSustituir: TEdit;
    edtSustituir1: TEdit;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    memResultados: TMemo;
    rdgOpciones: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure rdgOpcionesClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Valores : Array [1..MAX] of Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  cont : Integer;
begin
  //Generamos valores
  for cont := 1 to MAX do valores[cont] := Random(1000);

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
  cont : Integer;
begin
  for cont := 1 to MAX do memResultados.Lines.Add(IntToStr(valores[cont]));
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
  cont : Integer;
begin
  for cont := 1 to MAX do valores[cont] := 0;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  memResultados.Clear;
end;

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  cont : Integer;
begin
  case rdgOpciones.ItemIndex of
       0: //Cuadrado
         begin
            for cont := 1 to MAX do memResultados.Lines.Add(IntToStr(valores[cont] * valores[cont]));
         end;
       1: //Buscar
         begin
            for cont := 1 to MAX do
                begin
                   if Valores[cont] = StrToInt(edtBuscar.Text) then
                     memResultados.Lines.Add('Se ha encontrado en la posición' + IntToStr(cont));
                end;
         end;
       2: //Borrar
         begin
              Valores[StrToInt(edtBorrar.Text)] := 0;
              memResultados.Lines.Add('Se ha borrado el valor de la posición ' + IntToStr(cont));
         end;
       3: //Sustituir
         begin
            for cont := 1 to MAX do
                begin
                   if Valores[Cont] = StrToInt(edtSustituir.Text) then
                     begin
                       Valores[Cont] := StrToInt(edtSustituir1.Text);
                       memResultados.Lines.Add('Se ha sustituido la posición' + IntToStr(cont));
                     end;
                end;
         end;
       else
         showMessage('Opción desconocida');
  end;
end;

procedure TForm1.rdgOpcionesClick(Sender: TObject);
begin
  case rdgOpciones.ItemIndex of
       0: //Cuadrado
         begin
            edtBuscar.Enabled := false;
            edtBorrar.Enabled := false;
            edtSustituir.Enabled := false;
            edtSustituir1.Enabled := false;
         end;
       1: //Buscar
         begin
            edtBuscar.Enabled := true;
            edtBorrar.Enabled := false;
            edtSustituir.Enabled := false;
            edtSustituir1.Enabled := false;
         end;
       2: //Borrar
         begin
            edtBuscar.Enabled := false;
            edtBorrar.Enabled := true;
            edtSustituir.Enabled := false;
            edtSustituir1.Enabled := false;
         end;
       3: //Sustituir
         begin
            edtBuscar.Enabled := false;
            edtBorrar.Enabled := false;
            edtSustituir.Enabled := true;
            edtSustituir1.Enabled := true;
         end;

  end;
end;

end.

