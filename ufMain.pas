unit ufMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, SynEdit, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TfrmMain = class(TForm)
    pnlTop: TPanel;
    pnlBottom: TPanel;
    SynEdit: TSynEdit;
    MainMenu: TMainMenu;
    mnuFile: TMenuItem;
    mnuQuit: TMenuItem;
    mnuOpen: TMenuItem;
    blank1: TMenuItem;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    btnFormat: TSpeedButton;
    mnuNew: TMenuItem;
    mnuSave: TMenuItem;
    mnSaveAs: TMenuItem;
    btnSave: TSpeedButton;
    btnNew: TSpeedButton;
    Help1: TMenuItem;
    mnuAbout: TMenuItem;
    btnOpen: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnFormatClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure mnSaveAsClick(Sender: TObject);
    procedure mnuAboutClick(Sender: TObject);
    procedure mnuNewClick(Sender: TObject);
    procedure mnuOpenClick(Sender: TObject);
    procedure mnuQuitClick(Sender: TObject);
    procedure mnuSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    currentFileName : string;
    function PrettyFormatJSON(const value: string): string;
    procedure New;
    procedure Save;
    procedure Open;
    procedure SaveAs;
    procedure displayFileName (filename : string);
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

Uses IOUtils, System.JSON, REST.Json, JSON.Writers, JSON.Types;


procedure TfrmMain.FormCreate(Sender: TObject);
begin
  currentFileName := '';
  new;
end;

function TfrmMain.PrettyFormatJSON(const value: string): string;
const
 DEF_INDENT = 2;
var
  jv: TJSONValue;
begin
  JV := nil;
  try
    try
      JV := TJSONObject.ParseJSONValue(Value);
      if JV <> nil then
         result := JV.Format(DEF_INDENT)
      else
        begin
        showmessage ('The JSON text is not valid Json text. The raw text will be loaded but it''s not Json');
        result := value;
        end;
    except
      on E: Exception do
         begin

         synedit.Text := value;
         end;
    end;
  finally
    FreeAndNil(JV);
  end;
end;


procedure TfrmMain.displayFileName (filename : string);
begin
  frmMain.Caption := filename + '  ' + 'JSON Formatter';
end;


procedure TfrmMain.New;
begin
  synedit.Text := '{ }';
  currentFileName := '';
  displayFileName ('none');
end;


procedure TfrmMain.SaveAs;
begin
if SaveDialog.Execute then
   begin
   TFile.WriteAllText (SaveDialog.FileName, SynEdit.text);
   currentFileName := SaveDialog.FileName;
   displayFileName (currentFileName);
   end;
end;

procedure TfrmMain.Save;
begin
  if currentFileName <> '' then
     TFile.WriteAllText(currentFileName, SynEdit.text)
  else
     saveAs;
end;


procedure TfrmMain.Open;
var jsonStr : string;
begin
   if OpenDialog.execute then
      begin
      currentFileName := OpenDialog.FileName;
      jsonStr := TFile.ReadAllText(OpenDialog.FileName);
      synedit.Text := PrettyFormatJSON (jsonStr);
      displayFileName (currentFileName);
      end;
end;

// -----------------------------------------------------------------------


procedure TfrmMain.btnFormatClick(Sender: TObject);
begin
  synedit.Text := PrettyFormatJSON (synedit.Text);
end;

procedure TfrmMain.btnNewClick(Sender: TObject);
begin
  new;
end;

procedure TfrmMain.btnOpenClick(Sender: TObject);
begin
  open;
end;

procedure TfrmMain.btnSaveClick(Sender: TObject);
begin
  Save;
end;

procedure TfrmMain.mnSaveAsClick(Sender: TObject);
begin
  SaveAs;
end;

procedure TfrmMain.mnuAboutClick(Sender: TObject);
begin
  showmessage ('Simple Json viewer and formatter. v1.0 Herbert M Sauro (2024)');
end;

procedure TfrmMain.mnuNewClick(Sender: TObject);
begin
  new;
end;


procedure TfrmMain.mnuOpenClick(Sender: TObject);
begin
  open;
end;


procedure TfrmMain.mnuQuitClick(Sender: TObject);
begin
   Application.Terminate
end;

procedure TfrmMain.mnuSaveClick(Sender: TObject);
begin
  Save;
end;

end.
