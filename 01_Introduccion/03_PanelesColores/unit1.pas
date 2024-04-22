unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnAmarillo: TButton;
    btnRojo: TButton;
    btnVerde: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    pnlRojo: TPanel;
    pnlAmarillo: TPanel;
    Panel3: TPanel;
    pnlVerde: TPanel;
    pnlPanel: TPanel;
    procedure btnAmarilloClick(Sender: TObject);
    procedure btnRojoClick(Sender: TObject);
    procedure btnVerdeClick(Sender: TObject);
    procedure pnlAmarilloMouseEnter(Sender: TObject);
    procedure pnlAmarilloMouseLeave(Sender: TObject);
    procedure pnlRojoMouseEnter(Sender: TObject);
    procedure pnlRojoMouseLeave(Sender: TObject);
    procedure pnlVerdeMouseEnter(Sender: TObject);
    procedure pnlVerdeMouseLeave(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnRojoClick(Sender: TObject);
begin
  pnlPanel.Color:=clred;
end;

procedure TForm1.btnVerdeClick(Sender: TObject);
begin
  pnlPanel.Color:=clgreen;
end;

procedure TForm1.pnlAmarilloMouseEnter(Sender: TObject);
begin
  pnlPanel.Color:=clyellow;
end;

procedure TForm1.pnlAmarilloMouseLeave(Sender: TObject);
begin
  pnlPanel.Color:=clDefault;
end;

procedure TForm1.btnAmarilloClick(Sender: TObject);
begin
  pnlPanel.Color:=clyellow;
end;

procedure TForm1.pnlRojoMouseEnter(Sender: TObject);
begin
  pnlPanel.Color:=clred;
end;

procedure TForm1.pnlRojoMouseLeave(Sender: TObject);
begin
  pnlPanel.Color:=clDefault;
end;

procedure TForm1.pnlVerdeMouseEnter(Sender: TObject);
begin
  pnlPanel.Color:=clGreen;
end;

procedure TForm1.pnlVerdeMouseLeave(Sender: TObject);
begin
  pnlPanel.Color:=clDefault;
end;

end.

