unit Unit1;

{$mode objfpc}

interface

uses
  Classes, SysUtils, Web,



  JS;

type
  TControllerIndex = class
  public
    btDownload: TJSHTMLButtonElement;
    procedure btDownloadClick;
    constructor Create; reintroduce;
  end;

implementation

procedure TControllerIndex.btDownloadClick;
begin
  Writeln('teste');
end;

constructor TControllerIndex.Create;
begin
  btDownload := TJSHTMLButtonElement(document.getElementById('btDownload'));
  btDownload.addEventListener('click', @btDownloadClick);
end;


end.

