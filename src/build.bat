@echo off

set hsfile=C:\Program Files (x86)\Hearthstone\Data\Win\cardxml0.unity3d

if not exist "%hsfile%" goto :eof

if not exist build mkdir build
pushd build
copy /Y "%hsfile%" "cardxml0.unity3d" > NUL
cl -Zi ..\valeera.c /utf-8 /nologo
popd