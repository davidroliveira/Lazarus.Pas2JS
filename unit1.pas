unit Unit1;

{$mode objfpc}

interface

uses
  Classes, SysUtils, Web, JS;

type
  TControllerIndex = class
  public
    btDownload: TJSHTMLButtonElement;
    btDownload2: TJSHTMLButtonElement;
    procedure btDownloadClick;
    procedure btDownload2Click;
    constructor Create; reintroduce;
  end;

implementation

procedure TControllerIndex.btDownloadClick;
begin
  Writeln('teste');
  Writeln(Self.btDownload);
end;

procedure TControllerIndex.btDownload2Click;
begin
  Writeln('teste2');
  Writeln(Self.btDownload2.labels);
end;

constructor TControllerIndex.Create;
begin
  btDownload := TJSHTMLButtonElement(document.getElementById('btDownload'));
  btDownload.addEventListener('click', @btDownloadClick);

  btDownload2 := TJSHTMLButtonElement(document.getElementById('btDownload2'));
  btDownload2.addEventListener('click', @btDownload2Click);
end;


end.

