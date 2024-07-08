program JSON_Notepad_Project;

uses
  Vcl.Forms,
  ufMain in 'ufMain.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows11 Modern Dark');
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
