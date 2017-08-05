unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   if Label1.Color = clRed then
      begin
      Label1.Color := clWhite;
      Label1.Font.Color := clRed;
      end
   else
   begin
        Label1.Color := clRed;
        Label1.Font.Color := clWhite;
   end;


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   if Timer1.Enabled then
      begin
      Timer1.Enabled := False;
      Button1.Caption := 'Kapat';
      end
   else
       Form1.Close;
end;

end.

