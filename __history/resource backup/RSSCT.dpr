program RSSCT;









uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  RS_Scenery_Configuration_Tool in 'RS_Scenery_Configuration_Tool.pas' {MainForm},
  rscommonfunctions in '..\rscommonfunctions.pas',
  Launch in '..\Launch.pas',
  EmailFeedback in 'EmailFeedback.pas' {EmailForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.Title := 'RS Scenery Configuration Tool';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TEmailForm, EmailForm);
  //Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
