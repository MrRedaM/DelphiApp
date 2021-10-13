unit NewDodationUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TNewDodationForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewDodationForm: TNewDodationForm;

implementation

{$R *.dfm}

end.
