unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    Header: TPanel;
    ToolPanel: TPanel;
    ListPanel: TPanel;
    Image1: TImage;
    Image2: TImage;
    ComboBox1: TComboBox;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

end.
