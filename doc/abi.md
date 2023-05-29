# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [massa/abi/v1/abi.proto](#massa_abi_v1_abi-proto)
    - [CallRequest](#massa-abi-v1-CallRequest)
    - [CallResponse](#massa-abi-v1-CallResponse)
    - [CreateSCRequest](#massa-abi-v1-CreateSCRequest)
    - [CreateSCResponse](#massa-abi-v1-CreateSCResponse)
    - [Empty](#massa-abi-v1-Empty)
    - [FunctionExistsRequest](#massa-abi-v1-FunctionExistsRequest)
    - [FunctionExistsResponse](#massa-abi-v1-FunctionExistsResponse)
    - [GenerateEventRequest](#massa-abi-v1-GenerateEventRequest)
    - [LocalCallRequest](#massa-abi-v1-LocalCallRequest)
    - [LocalCallResponse](#massa-abi-v1-LocalCallResponse)
    - [LogRequest](#massa-abi-v1-LogRequest)
    - [NativeAddress](#massa-abi-v1-NativeAddress)
    - [NativeAmount](#massa-abi-v1-NativeAmount)
    - [TestRequest](#massa-abi-v1-TestRequest)
    - [TestResponse](#massa-abi-v1-TestResponse)
    - [TransferCoinsRequest](#massa-abi-v1-TransferCoinsRequest)
  
- [Scalar Value Types](#scalar-value-types)



<a name="massa_abi_v1_abi-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/abi/v1/abi.proto



<a name="massa-abi-v1-CallRequest"></a>

### CallRequest
CallSC


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_sc_address | [NativeAddress](#massa-abi-v1-NativeAddress) |  | Target_sc_address is the address of the smart contract to call |
| target_function_name | [string](#string) |  | Function is the name of the function to call |
| function_arg | [bytes](#bytes) |  | Argument to the function serialized in a byte array. |
| call_coins | [NativeAmount](#massa-abi-v1-NativeAmount) |  | call_coins is the amount of coins to pay for the call |






<a name="massa-abi-v1-CallResponse"></a>

### CallResponse
CallResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| return_data | [bytes](#bytes) |  | Return_data is the return value of the function |






<a name="massa-abi-v1-CreateSCRequest"></a>

### CreateSCRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| bytecode | [bytes](#bytes) |  | Bytecode is the compiled code of the smart contract |






<a name="massa-abi-v1-CreateSCResponse"></a>

### CreateSCResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sc_address | [NativeAddress](#massa-abi-v1-NativeAddress) |  | Sc_address is the address of the smart contract |






<a name="massa-abi-v1-Empty"></a>

### Empty
Empty






<a name="massa-abi-v1-FunctionExistsRequest"></a>

### FunctionExistsRequest
FunctionExists


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_sc_address | [NativeAddress](#massa-abi-v1-NativeAddress) |  | Target_sc_address is the address of the smart contract to check |
| function_name | [string](#string) |  | Function is the name of the function to call |






<a name="massa-abi-v1-FunctionExistsResponse"></a>

### FunctionExistsResponse
FunctionExistsResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| exists | [bool](#bool) |  | Exists is true if the function exists |






<a name="massa-abi-v1-GenerateEventRequest"></a>

### GenerateEventRequest
GenerateEventRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| event | [string](#string) |  | Event |






<a name="massa-abi-v1-LocalCallRequest"></a>

### LocalCallRequest
LocalCall


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_sc_address | [NativeAddress](#massa-abi-v1-NativeAddress) |  | Target_sc_address is the address of the smart contract to call |
| target_function_name | [string](#string) |  | Function is the name of the function to call |
| function_arg | [bytes](#bytes) |  | Argument to the function serialized in a byte array. |






<a name="massa-abi-v1-LocalCallResponse"></a>

### LocalCallResponse
LocalCallResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| return_data | [bytes](#bytes) |  | Return_data is the return value of the function |






<a name="massa-abi-v1-LogRequest"></a>

### LogRequest
LogRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message | [string](#string) |  |  |






<a name="massa-abi-v1-NativeAddress"></a>

### NativeAddress
NativeAddress is the address of a smart contract


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| category | [fixed32](#fixed32) |  | Address is the address of the smart contract |
| version | [fixed32](#fixed32) |  | Version is the version of the smart contract |
| content | [bytes](#bytes) |  | Content is the content of the smart contract |






<a name="massa-abi-v1-NativeAmount"></a>

### NativeAmount
NativeAmount is represented as a fraction so precision can be adjusted in
the future.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| numerator | [fixed64](#fixed64) |  | Numerator is the numerator of the fraction |
| denominator | [fixed64](#fixed64) |  | Denominator is the denominator of the fraction |






<a name="massa-abi-v1-TestRequest"></a>

### TestRequest
TestRequest


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message_in | [bytes](#bytes) |  |  |






<a name="massa-abi-v1-TestResponse"></a>

### TestResponse
TestResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message_out | [bytes](#bytes) |  |  |






<a name="massa-abi-v1-TransferCoinsRequest"></a>

### TransferCoinsRequest
TransferCoins


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_address | [NativeAddress](#massa-abi-v1-NativeAddress) |  | Target_address is the address to transfer coins to |
| amount_to_transfer | [NativeAmount](#massa-abi-v1-NativeAmount) |  | Amount_to_transfer is the amount of coins to transfer |





 

 

 

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

