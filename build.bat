@echo off

REM Function to generate documentation
:generate_docs
set "proto_dir=%~1"
set "doc_type=%~2"
set "doc_name=%~3"

echo Generating %doc_type% %doc_name% documentation...
for /r "%proto_dir%" %%f in (*.proto) do (
  "protoc" --proto_path="%proto_dir%" --proto_path=./proto/commons --proto_path=./proto/third_party --doc_out=./doc/ --doc_opt=%doc_type%,%doc_name% "%%~f"
)

exit /b

echo Building Massa proto...

echo Linting and formatting proto files...
buf lint && buf format -w
echo Proto files linted and formatted successfully.

REM Generate API documentation
echo Generating API documentation...
call :generate_docs "./proto/apis" "html" "api.html"
call :generate_docs "./proto/apis" "markdown" "api.md"
echo API documentation generated successfully.

REM Generate ABI documentation
echo Generating ABI documentation...
call :generate_docs "./proto/abis" "html" "abi.html"
call :generate_docs "./proto/abis" "markdown" "abi.md"
echo ABI documentation generated successfully.

echo Massa proto build finished!
