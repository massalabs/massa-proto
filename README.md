<!-- Copyright (c) 2023 MASSA LABS <info@massa.net> -->

# Massa proto

This repository contains Protobuf message definitions for Massa blockchain.

Requirements
------------

Make sure you have the following latest versions of the required tools:

- [protoc](https://grpc.io/docs/protoc-installation/): `3.21.12+`. 
- [protoc-gen-doc](https://github.com/pseudomuto/protoc-gen-doc): `1.5.1+`
- [buf](https://buf.build/docs/installation): `1.19.0+`

Please ensure that you have the required versions or newer to guarantee compatibility and access to the latest features.

Project build
-------------

You can lint, format and update the generated documentation from protobuf files by running: 
```bash
./build.sh
```

Postman integration
-------------------
You can easily import APIs collections from [Massa's Postman workspace](https://www.postman.com/massalabs) and start testing and exploring the provided functionalities by Massa API's.

VSCode settings
------------------

1- Install [vscode-proto3](https://marketplace.visualstudio.com/items?itemName=zxh404.vscode-proto3) extension.

2- The following settings contain a `protoc` configuration block:

```json
{
    "protoc": {  // Specifies the configuration for the protoc plugin.
        "path": "/PATH/TO/PROTOC",  // Sets the path to the protoc binary that will be used to compile the protobuf files.
        "compile_on_save": true,  // Enables automatic compilation of protobuf files when they are saved.
        "options": [  // Specifies the command line options that will be passed to protoc.
            "{workspaceRoot}/proto/**/*.proto",  // Specifies the path to the protobuf files that should be compiled.
            "--proto_path=${workspaceRoot}/proto/",  // Specifies the directory to search for imported protobuf files.
            "--proto_path=${workspaceRoot}/proto/commons",  // Specifies the directory to search for imported common protobuf files.
            "--proto_path=${workspaceRoot}/proto/third_party",  // Specifies the directory to search for imported third_party protobuf files.
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
