
set laufwerk=%~dp0

set laufwerk=%laufwerk:~0,20%

subst m: /D

subst m: %laufwerk%

