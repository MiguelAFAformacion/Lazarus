unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Timer1: TTimer;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Label1.Caption := FormatDateTime('hh:mm:ss', Now);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Label1.Caption := FormatDateTime('hh:mm:ss', Now);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Timer1.Enabled := False;
end;

end.

















