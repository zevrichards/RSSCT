program RSSCT;

{$R *.dres}

uses
  madExcept,
  Windows,
  System.SysUtils,
  madLinkDisAsm,
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  RS_Scenery_Configuration_Tool in 'RS_Scenery_Configuration_Tool.pas' {MainForm},
  EmailFeedback in 'EmailFeedback.pas' {EmailForm},
  Launch in '..\Common\Launch.pas',
  rscommonfunctions in '..\Common\rscommonfunctions.pas';

{$R *.res}

var
  pid: string;
  h: THandle;
begin
  if FindCmdLineSwitch('pid', pid) then
  begin
    h := OpenProcess(SYNCHRONIZE, FALSE, StrToInt(pid));
    if h <> 0 then
    begin
      WaitForSingleObject(h, INFINITE);
      CloseHandle(h);
    end;
  end;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.Title := 'RS Scenery Configuration Tool';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TEmailForm, EmailForm);
  //Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
