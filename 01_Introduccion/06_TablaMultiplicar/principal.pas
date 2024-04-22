unit Principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfPrincipal }

  TfPrincipal = class(TForm)
    btnCalcular: TButton;
    btnLimpiar: TButton;
    edtFin: TEdit;
    edtIni: TEdit;
    edtNum: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbxResultados: TListBox;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnLimpiarClick(Sender: TObject);
  private

  public

  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.lfm}

{ TfPrincipal }

procedure TfPrincipal.btnCalcularClick(Sender: TObject);
var
  cont  : integer;
  valor : integer;
  vIni  : integer;
  vFin  : integer;
  linea : string;
begin
  lbxResultados.Items.Add('Tabla de Multiplicar del ' + edtNum.Text);
  lbxResultados.Items.Add('**************************');

  vIni := StrToInt(edtIni.Text);
  vFin := StrToInt(edtFin.Text);

  for cont := vIni to vFin do
    begin
      valor := StrToInt(edtNum.Text);
      linea := edtNum.Text + ' * ' + IntToStr(cont) + ' = ' + IntToStr(valor * cont);
      lbxResultados.Items.Add(linea);
    end;
  lbxResultados.Items.Add('');
end;

procedure TfPrincipal.btnLimpiarClick(Sender: TObject);
begin
  lbxResultados.Clear;
end;

end.

















