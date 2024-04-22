unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnAmpliar: TButton;
    btnCalcular: TButton;
    btnLimpiar: TButton;
    cmbAngulo: TComboBox;
    edtNum1: TEdit;
    edtNum2: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    grbExtras: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    memResultados: TMemo;
    rgpOperacion: TRadioGroup;
    procedure btnAmpliarClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure btnLimpiarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  n1, n2, aux : real;
  lin         : String;
begin
  //Inicializamos
  n1 := StrToFloat(edtNum1.Text);
  n2 := StrToFloat(edtNum2.Text);

  case rgpOperacion.ItemIndex of
    0: //Suma
      begin
        lin := edtNum1.Text + ' + ' + edtNum2.Text + ' = ' + FloatToStr(n1 + n2);
        memResultados.Lines.Add(lin);
        if grbExtras.Visible then
          begin
            memResultados.Lines.Add('Seno('
                                   + cmbAngulo.Text
                                   + ') = '
                                   + FloatToStr(sin(StrToFloat(cmbAngulo.Text))));
            memResultados.Lines.Add('Coseno(' + cmbAngulo.Text + ') = ' + FloatToStr(cos(StrToFloat(cmbAngulo.Text))));
          end;
      end;
    1: //Resta
      begin
        lin := edtNum1.Text + ' - ' + edtNum2.Text + ' = ' + FloatToStr(n1 - n2);
        memResultados.Lines.Add(lin);
      end;
    2: //Multiplicación
      begin
        lin := edtNum1.Text + ' * ' + edtNum2.Text + ' = ' + FloatToStr(n1 * n2);
        memResultados.Lines.Add(lin);
      end;
    3: //División
      begin
        if n2 = 0 then
          begin
            lin := 'No es posible dividir entre 0';
            memResultados.Lines.Add(lin);
          end
        else
          begin
            lin := edtNum1.Text + ' / ' + edtNum2.Text + ' = ' + FloatToStr(n1 / n2);
            memResultados.Lines.Add(lin);
          end;
      end;
  end;
end;

procedure TForm1.btnLimpiarClick(Sender: TObject);
begin
  memResultados.Clear;
end;

procedure TForm1.btnAmpliarClick(Sender: TObject);
begin
  if grbExtras.Visible
    then
      begin
        grbExtras.Visible := false;
        btnAmpliar.Caption := 'Ampliar';
      end
    else
      begin
        grbExtras.Visible := true;
        btnAmpliar.Caption := 'Ocultar';
      end;
end;

end.













