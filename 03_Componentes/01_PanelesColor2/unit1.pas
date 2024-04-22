unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnReset: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnlPrincipal: TPanel;
    pnlP1: TPanel;
    pnlP2: TPanel;
    pnlP3: TPanel;
    rdgEventos: TRadioGroup;
    rdgColores: TRadioGroup;
    rdgPaneles: TRadioGroup;
    procedure btnResetClick(Sender: TObject);
    procedure pnlPrincipalClick(Sender: TObject);
    procedure pnlPrincipalDblClick(Sender: TObject);
    procedure rdgEventosClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.pnlPrincipalClick(Sender: TObject);
var
  ColorSel : TColor;
begin
  //Validamos evento click
  if rdgEventos.ItemIndex <> 1 then exit;

  //Asignar Color Selecionado
  case rdgColores.ItemIndex of
    0: ColorSel := clRed;      //Rojo
    1: ColorSel := clGreen;    //Verde
    2: ColorSel := clBlue;     //Azul
    else ColorSel := clWhite;  //Blanco
  end;

  //Aplicar color a Panel/s
  case rdgPaneles.ItemIndex of
    0: //Todos
      begin
        if rdgColores.ItemIndex = 3 then // Aleatorio
          begin
            pnlP1.Color := RGBToColor(Random(256), Random(256), Random(256));
            pnlP2.Color := RGBToColor(Random(256), Random(256), Random(256));
            pnlP3.Color := RGBToColor(Random(256), Random(256), Random(256));
          end
        else
          begin
           pnlP1.Color := ColorSel;
           pnlP2.Color := ColorSel;
           pnlP3.Color := ColorSel;
          end;
      end;
    1: pnlP1.Color := ColorSel; //Panel 1
    2: pnlP2.Color := ColorSel; //Panel 2
    3: pnlP3.Color := ColorSel; //Panel 3
  end;
end;

procedure TForm1.pnlPrincipalDblClick(Sender: TObject);
begin

end;

procedure TForm1.rdgEventosClick(Sender: TObject);
begin
end;

procedure TForm1.btnResetClick(Sender: TObject);
var
  ColorDef : TColor;
begin
  ColorDef := clWhite;

  pnlP1.Color := ColorDef;
  pnlP2.Color := ColorDef;
  pnlP3.Color := ColorDef;
end;

end.

