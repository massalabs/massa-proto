<!-- Copyright (c) 2023 MASSA LABS <info@massa.net> -->

### Massa proto

In order to compile proto files, you must have the `protoc` compiler installed on your system. `protoc` is a protocol buffer compiler that can generate code in a variety of programming languages.

To check if you have `protoc` installed on your system, you can run the following command in your terminal:

```
protoc --version
libprotoc 3.21.12 # Ensure compiler version is 3.15+
```

If you see a version number printed out, then you have `protoc` installed. If not, you will need to download and install it.

Installing Protoc
-----------------

### macOS

To install `protoc` on macOS using Homebrew, run the following command:

```
brew install protobuf
protoc --version  # Ensure compiler version is 3.15+
```

### Linux

To install `protoc` on Linux, you can download the binary file for your architecture from the [official Protobuf releases page](https://github.com/protocolbuffers/protobuf/releases). Once downloaded, extract the contents of the archive and move the `protoc` binary to a location on your system PATH.

Alternatively, you can use your distribution's package manager to install `protoc`. On Ubuntu, for example, you can run:

```
sudo apt install protobuf-compiler
protoc --version  # Ensure compiler version is 3.15+
```

### Windows

To install `protoc` on Windows, you can download the binary file for your architecture from the [official Protobuf releases page](https://github.com/protocolbuffers/protobuf/releases). Once downloaded, extract the contents of the archive and move the `protoc` binary to a location on your system PATH.

After installing `protoc`, you should be able to compile proto files using the appropriate language-specific plugin (e.g. `protoc --go_out=./ path/to/my_proto_file.proto`).

After installing `protoc`, please verify that the `protoc` command is accessible by running `protoc --version` again and ensure compiler version is 3+.

To keep the documentation synchronised with our proto files, you must install `protoc-gen-doc`. You can use your package manager or download the binary from the official [GitHub repository releases](https://github.com/pseudomuto/protoc-gen-doc/releases) and add it to your system's `PATH`

You can easily import APIs collections from [Massa's Postman workspace](https://www.postman.com/massalabs) and start testing and exploring the provided functionalities by Massa API's.

VSCode integration
------------------

1- Install [vscode-proto3](https://marketplace.visualstudio.com/items?itemName=zxh404.vscode-proto3) extension.

2- The following settings contain a `protoc` configuration block:

```json
{
    "protoc": {  // Specifies the configuration for the protoc plugin.
        "path": "/opt/homebrew/bin/protoc",  // Sets the path to the protoc binary that will be used to compile the protobuf files.
        "compile_on_save": true,  // Enables automatic compilation of protobuf files when they are saved.
        "options": [  // Specifies the command line options that will be passed to protoc.
            "{workspaceRoot}/proto/massaapis/**/*.proto",  // Specifies the path to the protobuf files that should be compiled.
            "--proto_path=${workspaceRoot}/proto/massaapis/",  // Specifies the directory to search for imported protobuf files.
            "--proto_path=${workspaceRoot}/proto/third-party",  // Specifies the directory to search for imported third-party protobuf files.
            "--java_out=${workspaceRoot}/gen/",  // Generates Java code from the protobuf files.
            // "--doc_out=${workspaceRoot}/doc/",  // Generates documentation in HTML/markdown format from the protobuf files.
            // "--doc_opt=html,api.html",  // Specifies the options for generating the HTML documentation.
            // "--doc_opt=markdown,api.md",  // Specifies the options for generating the markdown documentation.
            // "--descriptor_set_out=${workspaceRoot}/src/api.bin"  // Generates a binary descriptor set for the protobuf files which is used for server reflection.
        ]
    }
}

```

3- Add the snippet above to `.vscode/settings.json`.


Protoc examples
---------------

Generate html documentation:
```bash
protoc \
  ./proto/massaapis/massalabs/**/*.proto \
  --proto_path=./proto/massaapis/ \
  --proto_path=./proto/third-party \
  --doc_out=./doc/ \
  --doc_opt=html,api.html
```

Generate markdown documentation:
```bash
protoc \
  ./proto/massaapis/**/*.proto \
  --proto_path=./proto/massaapis/ \
  --proto_path=./proto/third-party \
  --doc_out=./doc/ \
  --doc_opt=markdown,api.md
```

Test code generation:
```bash
protoc \
  ./proto/massaapis/**/*.proto \
  --proto_path=./proto/massaapis/ \
  --proto_path=./proto/third-party \
  --java_out=./gen/
```
