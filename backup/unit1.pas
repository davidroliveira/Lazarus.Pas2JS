unit Unit1;

{$mode objfpc}

interface

uses
  Classes, SysUtils, Web;

type
  TControllerIndex = class
  public
    btDownload: TJSHTMLButtonElement;
    procedure btDownloadClick;
    constructor Create; reintroduce;
  end;

//procedure btDownloadClick;

//var
//  btDownload: TJSHTMLButtonElement;

implementation

//procedure btDownloadClick;
//begin
//  Writeln('teste');
//end;

{ TPageIndex }

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

