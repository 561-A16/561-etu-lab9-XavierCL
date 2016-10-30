#!bin/bash
set -e
set -v
dotnet restore
dotnet test ./webapp.unittests
cd webapp
dotnet publish --output $HOME/publish