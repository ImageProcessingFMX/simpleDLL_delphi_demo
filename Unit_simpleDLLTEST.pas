<<<<<<< HEAD
unit Unit_simpleDLLTEST;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ScrollBox,
  FMX.Memo, FMX.StdCtrls, FMX.Edit, FMX.EditBox, FMX.SpinBox,
  FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    btn_add2numbers: TButton;
    spnbx_B: TSpinBox;
    spnbx_A: TSpinBox;
    lbl1: TLabel;
    lbl2: TLabel;
    mmo_out: TMemo;
    btn_Minus2Numbers: TButton;
    procedure btn_add2numbersClick(Sender: TObject);
    procedure btn_Minus2NumbersClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

{$IFDEF  MSWINDOWS}
function AddIntegers(_a, _b: integer): integer; stdcall;
  external 'TestLibrary.dll';

function MinusIntegers(_a, _b: integer): integer; stdcall;
  external 'TestLibrary.dll';
{$ENDIF}
{$IFDEF  LINUX}
function AddIntegers(_a, _b: integer): integer; stdcall;
  external 'libTestLibrary.so';

function MinusIntegers(_a, _b: integer): integer; stdcall;
  external 'libTestLibrary.so';
{$ENDIF}

implementation

{$R *.fmx}

procedure TForm1.btn_add2numbersClick(Sender: TObject);
var
  a, b, c: integer;
begin
  a := round(spnbx_A.Value);
  b := round(spnbx_B.Value);
  c := AddIntegers(a, b);
  mmo_out.Lines.Add('Add :  C=' + IntToStr(c));
end;

procedure TForm1.btn_Minus2NumbersClick(Sender: TObject);
var
  a, b, c: integer;
begin
  a := round(spnbx_A.Value);
  b := round(spnbx_B.Value);
  c := MinusIntegers(a, b);
  mmo_out.Lines.Add('Add :  C=' + IntToStr(c));
end;

end.
=======
unit Unit_simpleDLLTEST;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ScrollBox,
  FMX.Memo, FMX.StdCtrls, FMX.Edit, FMX.EditBox, FMX.SpinBox,
  FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    btn_add2numbers: TButton;
    spnbx_B: TSpinBox;
    spnbx_A: TSpinBox;
    lbl1: TLabel;
    lbl2: TLabel;
    mmo_out: TMemo;
    procedure btn_add2numbersClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


{$IFDEF  MSWINDOWS}
function AddIntegers(_a, _b: integer): integer; stdcall; external 'TestLibrary.dll';
{$ENDIF}


{$IFDEF  LINUX}
  function AddIntegers(_a, _b: integer): integer; stdcall; external 'libTestLibrary.so';
{$ENDIF}


implementation

{$R *.fmx}

procedure TForm1.btn_add2numbersClick(Sender: TObject);
var   a,b,c : Integer ;
begin
    a :=  round(spnbx_A.Value);
    b :=  Round(spnbx_B.Value);
    c := AddIntegers (a,b);
    mmo_out.Lines.Add('Add : '  +  IntToStr(c));
end;

end.
>>>>>>> bbb2158d43dfecb05c66c2f26ff5e1cc9180373d
