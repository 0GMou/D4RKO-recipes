set -euo pipefail
mkdir -p out/bin
printf "#include <windows.h>\n#include <stdio.h>\nint main(){ printf(\"hello\\n\"); return 0; }\n" > hello.c
x86_64-w64-mingw32-gcc hello.c -o out/bin/hello.exe
mkdir -p out/pkg
7z a out/pkg/hello-win64.7z out/bin/hello.exe
