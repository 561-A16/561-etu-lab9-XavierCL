#!bin/bash
set -e
dotnet restore
dotnet test ./webapp.unittests
cd webapp
dotnet publish --output $HOME/publish