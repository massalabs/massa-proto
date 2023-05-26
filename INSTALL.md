Installation Tutorial: protoc, protoc-gen-doc, and buf
======================================================

This tutorial provides step-by-step instructions for installing `protoc`, `protoc-gen-doc`, and `buf` on various platforms.

1\. Install protoc
------------------

`protoc` is the Protocol Buffers compiler. It is used to compile `.proto` files into language-specific code.

### Windows

1.  Download the latest release of `protoc` from the official GitHub repository: [https://github.com/protocolbuffers/protobuf/releases/latest](https://github.com/protocolbuffers/protobuf/releases/latest)
    
2.  Extract the downloaded ZIP file to a location of your choice.
    
3.  Add the `protoc` binary directory to your system's PATH environment variable.
    

### Linux

1.  Open a terminal.
    
2.  Run the following commands to install `protoc`:
    

```bash
# Update package lists
$ sudo apt update

# Install protoc
$ sudo apt install protobuf-compiler

```

### macOS

1.  Open a terminal.
    
2.  Run the following commands to install `protoc` using Homebrew:
    

```bash
# Install Homebrew (if not already installed)
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install protoc
$ brew install protobuf

```

2\. Install protoc-gen-doc
--------------------------

`protoc-gen-doc` is a plugin for `protoc` that generates API documentation from `.proto` files.

### Windows

1.  Open a terminal or command prompt.
    
2.  Run the following command to install `protoc-gen-doc` using the Go toolchain:
    

```bash
$ go get -u github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc

```

### Linux

1.  Open a terminal.
    
2.  Run the following commands to install `protoc-gen-doc` using pip:
    

```bash
# Install Python and pip (if not already installed)
$ sudo apt update
$ sudo apt install python3 python3-pip

# Install protoc-gen-doc
$ sudo pip3 install protobuf protoc-gen-doc

```

### macOS

1.  Open a terminal.
    
2.  Run the following commands to install `protoc-gen-doc` using Homebrew:
    

```bash
# Install protoc-gen-doc
$ brew install protoc-gen-doc

```

3\. Install buf
---------------

`buf` is a tool that manages Protocol Buffers and performs linting and formatting of `.proto` files.

### Windows

1.  Open a terminal or command prompt.
    
2.  Run the following command to install `buf` using the Go toolchain:
    

```bash
$ go get -u github.com/bufbuild/buf/cmd/buf

```

### Linux

1.  Open a terminal.
    
2.  Run the following commands to install `buf`:
    

```bash
# Download the latest release
$ curl -sSL https://github.com/bufbuild/buf/releases/latest/download/buf-Linux-x86_64.tar.gz | tar xzv

# Move the `buf` binary to a directory on your PATH
$ sudo mv buf /usr/local/bin/

```

### macOS

1.  Open a terminal.
    
2.  Run the following commands to install `buf` using Homebrew:
    

```bash
# Install buf
$ brew install buf

```

Congratulations! You have successfully installed `protoc`, `protoc-gen-doc`, and `buf` on your respective platform.

You are now ready to use these tools for your Protocol Buffers projects. Refer to the respective documentation for more details on using each tool.
