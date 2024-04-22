unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnOperar: TButton;
    edtDivi: TEdit;
    edtMulti: TEdit;
    edtNum1: TEdit;
    edtNum2: TEdit;
    edtResta: TEdit;
    edtSuma: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure btnOperarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnOperarClick(Sender: TObject);
var
  aux: real;
begin
  //Suma
  aux := StrToFloat(edtNum1.Text) + StrToFloat(edtNum2.Text);
  edtSuma.Text := FloatToStr(aux);
  //Resta
  aux := StrToFloat(edtNum1.Text) - StrToFloat(edtNum2.Text);
  edtResta.Text := FloatToStr(aux);
  //Multiplicación
  aux := StrToFloat(edtNum1.Text) * StrToFloat(edtNum2.Text);
  edtMulti.Text := FloatToStr(aux);
  //División
  if StrToFloat(edtNum2.Text) = 0 then
     begin
          ShowMessage('No se puede dividir entre 0');
     end
  else
      begin
          aux := StrToFloat(edtNum1.Text) / StrToFloat(edtNum2.Text);
          edtDivi.Text := FloatToStr(aux);
      end;
end;

end.

