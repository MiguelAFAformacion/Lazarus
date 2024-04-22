unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnAddHora: TButton;
    btnAnadir: TButton;
    btnEliminar: TButton;
    btnAddFecha: TButton;
    btnLimpiar: TButton;
    btnEliminarSelec: TButton;
    edtPosicion: TEdit;
    edtTexto: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    lblElementos: TLabel;
    ListBox1: TListBox;
    procedure btnAddFechaClick(Sender: TObject);
    procedure btnAddHoraClick(Sender: TObject);
    procedure btnAnadirClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnLimpiarClick(Sender: TObject);
    procedure btnEliminarSelecClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnAnadirClick(Sender: TObject);
begin
  ListBox1.Items.Add(edtTexto.Text);
  lblElementos.Caption := 'Nº Elementos: ' + IntToStr(ListBox1.Count);
end;

procedure TForm1.btnAddFechaClick(Sender: TObject);
begin
  ListBox1.Items.Add(DateToStr(Date));
  lblElementos.Caption := 'Nº Elementos: ' + IntToStr(ListBox1.Count);
end;

procedure TForm1.btnAddHoraClick(Sender: TObject);
begin
  ListBox1.Items.Add(TimeToStr(Time));
  lblElementos.Caption := 'Nº Elementos: ' + IntToStr(ListBox1.Count);
end;

procedure TForm1.btnEliminarClick(Sender: TObject);
var
  pos : integer;
begin
  pos := StrToInt(edtPosicion.Text);
  ListBox1.Items.Delete(pos);
  lblElementos.Caption := 'Nº Elementos: ' + IntToStr(ListBox1.Count);
end;

procedure TForm1.btnLimpiarClick(Sender: TObject);
begin
  ListBox1.Clear;
end;

procedure TForm1.btnEliminarSelecClick(Sender: TObject);
begin
  if ListBox1.ItemIndex <> 0 then
     begin
       ListBox1.Items.Delete(ListBox1.ItemIndex);
       lblElementos.Caption := 'Nº Elementos: ' + IntToStr(ListBox1.Count);
     end;
end;

end.

