FROM microsoft/windowsservercore
MAINTAINER Aaron Powell <me@aaron-powell.com>

RUN mkdir c:\seq
WORKDIR /seq

COPY 'DownloadAndSetup.ps1' .

RUN powershell.exe c:\seq\DownloadAndSetup.ps1

COPY 'Start-Seq.ps1' .

EXPOSE 5341/tcp

ENTRYPOINT powershell.exe c:\seq\Start-Seq.ps1
