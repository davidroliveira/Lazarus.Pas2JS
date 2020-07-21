program project1;

{$mode objfpc}

uses
  //browserconsole,
  browserapp, JS, Classes, SysUtils, Web, Unit1;

type
  TMyApplication = class(TBrowserApplication)
    procedure doRun; override;
  end;

procedure TMyApplication.doRun;
begin
  TControllerIndex.Create;
  Terminate;
end;

var
  Application : TMyApplication;

begin
  Application:=TMyApplication.Create(nil);
  Application.Initialize;
  Application.Run;
  Application.Free;
end.
