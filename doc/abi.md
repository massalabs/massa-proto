# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [massa/abi/v1/abi.proto](#massa_abi_v1_abi-proto)
    - [AbiResponse](#massa-abi-v1-AbiResponse)
    - [AddNativeAmountsRequest](#massa-abi-v1-AddNativeAmountsRequest)
    - [AddNativeAmountsResult](#massa-abi-v1-AddNativeAmountsResult)
    - [CallRequest](#massa-abi-v1-CallRequest)
    - [CallResponse](#massa-abi-v1-CallResponse)
    - [CheckNativeAddressRequest](#massa-abi-v1-CheckNativeAddressRequest)
    - [CheckNativeAddressResult](#massa-abi-v1-CheckNativeAddressResult)
    - [CheckNativeAmountRequest](#massa-abi-v1-CheckNativeAmountRequest)
    - [CheckNativeAmountResult](#massa-abi-v1-CheckNativeAmountResult)
    - [CheckNativeHashRequest](#massa-abi-v1-CheckNativeHashRequest)
    - [CheckNativeHashResult](#massa-abi-v1-CheckNativeHashResult)
    - [CheckNativePubKeyRequest](#massa-abi-v1-CheckNativePubKeyRequest)
    - [CheckNativePubKeyResult](#massa-abi-v1-CheckNativePubKeyResult)
    - [CheckNativeSigRequest](#massa-abi-v1-CheckNativeSigRequest)
    - [CheckNativeSigResult](#massa-abi-v1-CheckNativeSigResult)
    - [CreateSCRequest](#massa-abi-v1-CreateSCRequest)
    - [CreateSCResponse](#massa-abi-v1-CreateSCResponse)
    - [DivRemNativeAmountRequest](#massa-abi-v1-DivRemNativeAmountRequest)
    - [DivRemNativeAmountResult](#massa-abi-v1-DivRemNativeAmountResult)
    - [Empty](#massa-abi-v1-Empty)
    - [Error](#massa-abi-v1-Error)
    - [FunctionExistsRequest](#massa-abi-v1-FunctionExistsRequest)
    - [FunctionExistsResponse](#massa-abi-v1-FunctionExistsResponse)
    - [GenerateEventRequest](#massa-abi-v1-GenerateEventRequest)
    - [LocalCallRequest](#massa-abi-v1-LocalCallRequest)
    - [LocalCallResponse](#massa-abi-v1-LocalCallResponse)
    - [LogRequest](#massa-abi-v1-LogRequest)
    - [MulNativeAmountRequest](#massa-abi-v1-MulNativeAmountRequest)
    - [MulNativeAmountResult](#massa-abi-v1-MulNativeAmountResult)
    - [NativeAddressFromStringRequest](#massa-abi-v1-NativeAddressFromStringRequest)
    - [NativeAddressFromStringResult](#massa-abi-v1-NativeAddressFromStringResult)
    - [NativeAddressToStringRequest](#massa-abi-v1-NativeAddressToStringRequest)
    - [NativeAddressToStringResult](#massa-abi-v1-NativeAddressToStringResult)
    - [NativeAmountFromBytesRequest](#massa-abi-v1-NativeAmountFromBytesRequest)
    - [NativeAmountFromBytesResult](#massa-abi-v1-NativeAmountFromBytesResult)
    - [NativeAmountFromStringRequest](#massa-abi-v1-NativeAmountFromStringRequest)
    - [NativeAmountFromStringResult](#massa-abi-v1-NativeAmountFromStringResult)
    - [NativeAmountToBytesRequest](#massa-abi-v1-NativeAmountToBytesRequest)
    - [NativeAmountToBytesResult](#massa-abi-v1-NativeAmountToBytesResult)
    - [NativeAmountToStringRequest](#massa-abi-v1-NativeAmountToStringRequest)
    - [NativeAmountToStringResult](#massa-abi-v1-NativeAmountToStringResult)
    - [NativeHashFromStringRequest](#massa-abi-v1-NativeHashFromStringRequest)
    - [NativeHashFromStringResult](#massa-abi-v1-NativeHashFromStringResult)
    - [NativeHashToStringRequest](#massa-abi-v1-NativeHashToStringRequest)
    - [NativeHashToStringResult](#massa-abi-v1-NativeHashToStringResult)
    - [NativePubKeyFromStringRequest](#massa-abi-v1-NativePubKeyFromStringRequest)
    - [NativePubKeyFromStringResult](#massa-abi-v1-NativePubKeyFromStringResult)
    - [NativePubKeyToStringRequest](#massa-abi-v1-NativePubKeyToStringRequest)
    - [NativePubKeyToStringResult](#massa-abi-v1-NativePubKeyToStringResult)
    - [NativeSigFromStringRequest](#massa-abi-v1-NativeSigFromStringRequest)
    - [NativeSigFromStringResult](#massa-abi-v1-NativeSigFromStringResult)
    - [NativeSigToStringRequest](#massa-abi-v1-NativeSigToStringRequest)
    - [NativeSigToStringResult](#massa-abi-v1-NativeSigToStringResult)
    - [RespResult](#massa-abi-v1-RespResult)
    - [ScalarDivRemNativeAmountRequest](#massa-abi-v1-ScalarDivRemNativeAmountRequest)
    - [ScalarDivRemNativeAmountResult](#massa-abi-v1-ScalarDivRemNativeAmountResult)
    - [SubNativeAmountsRequest](#massa-abi-v1-SubNativeAmountsRequest)
    - [SubNativeAmountsResult](#massa-abi-v1-SubNativeAmountsResult)
    - [TransferCoinsRequest](#massa-abi-v1-TransferCoinsRequest)
  
- [Scalar Value Types](#scalar-value-types)



<a name="massa_abi_v1_abi-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/abi/v1/abi.proto



<a name="massa-abi-v1-AbiResponse"></a>

### AbiResponse
Generic message that encapsulate response from ABI calls.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [RespResult](#massa-abi-v1-RespResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-AddNativeAmountsRequest"></a>

### AddNativeAmountsRequest
Addition


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount1 | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |
| amount2 | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-AddNativeAmountsResult"></a>

### AddNativeAmountsResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sum | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-CallRequest"></a>

### CallRequest
CallSC


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_sc_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  |  |
| target_function_name | [string](#string) |  |  |
| function_arg | [bytes](#bytes) |  | Argument to the function serialized in a byte array. |
| call_coins | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | call_coins is the amount of coins to pay for the call |






<a name="massa-abi-v1-CallResponse"></a>

### CallResponse
CallResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [bytes](#bytes) |  | Return_data is the return value of the function |






<a name="massa-abi-v1-CheckNativeAddressRequest"></a>

### CheckNativeAddressRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_check | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  |  |






<a name="massa-abi-v1-CheckNativeAddressResult"></a>

### CheckNativeAddressResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_valid | [bool](#bool) |  |  |






<a name="massa-abi-v1-CheckNativeAmountRequest"></a>

### CheckNativeAmountRequest
check_native_amount


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_check | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-CheckNativeAmountResult"></a>

### CheckNativeAmountResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_valid | [bool](#bool) |  |  |






<a name="massa-abi-v1-CheckNativeHashRequest"></a>

### CheckNativeHashRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_check | [massa.model.v1.NativeHash](#massa-model-v1-NativeHash) |  |  |






<a name="massa-abi-v1-CheckNativeHashResult"></a>

### CheckNativeHashResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_valid | [bool](#bool) |  |  |






<a name="massa-abi-v1-CheckNativePubKeyRequest"></a>

### CheckNativePubKeyRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_check | [massa.model.v1.NativePubKey](#massa-model-v1-NativePubKey) |  |  |






<a name="massa-abi-v1-CheckNativePubKeyResult"></a>

### CheckNativePubKeyResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_valid | [bool](#bool) |  |  |






<a name="massa-abi-v1-CheckNativeSigRequest"></a>

### CheckNativeSigRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_check | [massa.model.v1.NativeSig](#massa-model-v1-NativeSig) |  |  |






<a name="massa-abi-v1-CheckNativeSigResult"></a>

### CheckNativeSigResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_valid | [bool](#bool) |  |  |






<a name="massa-abi-v1-CreateSCRequest"></a>

### CreateSCRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| bytecode | [bytes](#bytes) |  | Bytecode is the compiled code of the smart contract |






<a name="massa-abi-v1-CreateSCResponse"></a>

### CreateSCResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sc_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  |  |






<a name="massa-abi-v1-DivRemNativeAmountRequest"></a>

### DivRemNativeAmountRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dividend | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |
| divisor | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-DivRemNativeAmountResult"></a>

### DivRemNativeAmountResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| quotient | [fixed64](#fixed64) |  |  |
| remainder | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-Empty"></a>

### Empty
Empty






<a name="massa-abi-v1-Error"></a>

### Error
Error message used in abi Response


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message | [string](#string) |  |  |






<a name="massa-abi-v1-FunctionExistsRequest"></a>

### FunctionExistsRequest
FunctionExists


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_sc_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  |  |
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
| target_sc_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  |  |
| target_function_name | [string](#string) |  |  |
| function_arg | [bytes](#bytes) |  | Argument to the function serialized in a byte array. |






<a name="massa-abi-v1-LocalCallResponse"></a>

### LocalCallResponse
LocalCallResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [bytes](#bytes) |  | Return_data is the return value of the function |






<a name="massa-abi-v1-LogRequest"></a>

### LogRequest
log


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message | [string](#string) |  |  |






<a name="massa-abi-v1-MulNativeAmountRequest"></a>

### MulNativeAmountRequest
Multiplication
try to compute product = amount * coefficient


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |
| coefficient | [fixed64](#fixed64) |  |  |






<a name="massa-abi-v1-MulNativeAmountResult"></a>

### MulNativeAmountResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| product | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-NativeAddressFromStringRequest"></a>

### NativeAddressFromStringRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  |  |






<a name="massa-abi-v1-NativeAddressFromStringResult"></a>

### NativeAddressFromStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  |  |






<a name="massa-abi-v1-NativeAddressToStringRequest"></a>

### NativeAddressToStringRequest
To string


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  |  |






<a name="massa-abi-v1-NativeAddressToStringResult"></a>

### NativeAddressToStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_address | [string](#string) |  |  |






<a name="massa-abi-v1-NativeAmountFromBytesRequest"></a>

### NativeAmountFromBytesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [bytes](#bytes) |  |  |






<a name="massa-abi-v1-NativeAmountFromBytesResult"></a>

### NativeAmountFromBytesResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-NativeAmountFromStringRequest"></a>

### NativeAmountFromStringRequest
native_amount_from_string


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  |  |






<a name="massa-abi-v1-NativeAmountFromStringResult"></a>

### NativeAmountFromStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_amount | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-NativeAmountToBytesRequest"></a>

### NativeAmountToBytesRequest
massa.model.v1.NativeAmount from and to byte array


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-NativeAmountToBytesResult"></a>

### NativeAmountToBytesResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [bytes](#bytes) |  |  |






<a name="massa-abi-v1-NativeAmountToStringRequest"></a>

### NativeAmountToStringRequest
native_amount_to_string


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-NativeAmountToStringResult"></a>

### NativeAmountToStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_amount | [string](#string) |  |  |






<a name="massa-abi-v1-NativeHashFromStringRequest"></a>

### NativeHashFromStringRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  |  |






<a name="massa-abi-v1-NativeHashFromStringResult"></a>

### NativeHashFromStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_hash | [massa.model.v1.NativeHash](#massa-model-v1-NativeHash) |  |  |






<a name="massa-abi-v1-NativeHashToStringRequest"></a>

### NativeHashToStringRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativeHash](#massa-model-v1-NativeHash) |  |  |






<a name="massa-abi-v1-NativeHashToStringResult"></a>

### NativeHashToStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_hash | [string](#string) |  |  |






<a name="massa-abi-v1-NativePubKeyFromStringRequest"></a>

### NativePubKeyFromStringRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  |  |






<a name="massa-abi-v1-NativePubKeyFromStringResult"></a>

### NativePubKeyFromStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_pubkey | [massa.model.v1.NativePubKey](#massa-model-v1-NativePubKey) |  |  |






<a name="massa-abi-v1-NativePubKeyToStringRequest"></a>

### NativePubKeyToStringRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativePubKey](#massa-model-v1-NativePubKey) |  |  |






<a name="massa-abi-v1-NativePubKeyToStringResult"></a>

### NativePubKeyToStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_pubkey | [string](#string) |  |  |






<a name="massa-abi-v1-NativeSigFromStringRequest"></a>

### NativeSigFromStringRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  |  |






<a name="massa-abi-v1-NativeSigFromStringResult"></a>

### NativeSigFromStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_sig | [massa.model.v1.NativeSig](#massa-model-v1-NativeSig) |  |  |






<a name="massa-abi-v1-NativeSigToStringRequest"></a>

### NativeSigToStringRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativeSig](#massa-model-v1-NativeSig) |  |  |






<a name="massa-abi-v1-NativeSigToStringResult"></a>

### NativeSigToStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_sig | [string](#string) |  |  |






<a name="massa-abi-v1-RespResult"></a>

### RespResult
Call RespResult becaule Result will conflict with the Result type in Rust
data MUST have the same name as they type in Rust they are converted to type


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| native_address_to_string_result | [NativeAddressToStringResult](#massa-abi-v1-NativeAddressToStringResult) |  |  |
| native_pub_key_to_string_result | [NativePubKeyToStringResult](#massa-abi-v1-NativePubKeyToStringResult) |  |  |
| native_sig_to_string_result | [NativeSigToStringResult](#massa-abi-v1-NativeSigToStringResult) |  |  |
| native_hash_to_string_result | [NativeHashToStringResult](#massa-abi-v1-NativeHashToStringResult) |  |  |
| native_amount_to_string_result | [NativeAmountToStringResult](#massa-abi-v1-NativeAmountToStringResult) |  |  |
| native_address_from_string_result | [NativeAddressFromStringResult](#massa-abi-v1-NativeAddressFromStringResult) |  |  |
| native_pub_key_from_string_result | [NativePubKeyFromStringResult](#massa-abi-v1-NativePubKeyFromStringResult) |  |  |
| native_sig_from_string_result | [NativeSigFromStringResult](#massa-abi-v1-NativeSigFromStringResult) |  |  |
| native_hash_from_string_result | [NativeHashFromStringResult](#massa-abi-v1-NativeHashFromStringResult) |  |  |
| native_amount_from_string_result | [NativeAmountFromStringResult](#massa-abi-v1-NativeAmountFromStringResult) |  |  |
| check_native_address_result | [CheckNativeAddressResult](#massa-abi-v1-CheckNativeAddressResult) |  |  |
| check_native_pub_key_result | [CheckNativePubKeyResult](#massa-abi-v1-CheckNativePubKeyResult) |  |  |
| check_native_sig_result | [CheckNativeSigResult](#massa-abi-v1-CheckNativeSigResult) |  |  |
| check_native_hash_result | [CheckNativeHashResult](#massa-abi-v1-CheckNativeHashResult) |  |  |
| check_native_amount_result | [CheckNativeAmountResult](#massa-abi-v1-CheckNativeAmountResult) |  |  |
| add_native_amounts_result | [AddNativeAmountsResult](#massa-abi-v1-AddNativeAmountsResult) |  |  |
| sub_native_amounts_result | [SubNativeAmountsResult](#massa-abi-v1-SubNativeAmountsResult) |  |  |
| mul_native_amount_result | [MulNativeAmountResult](#massa-abi-v1-MulNativeAmountResult) |  |  |
| scalar_div_rem_native_amount_result | [ScalarDivRemNativeAmountResult](#massa-abi-v1-ScalarDivRemNativeAmountResult) |  |  |
| div_rem_native_amount_result | [DivRemNativeAmountResult](#massa-abi-v1-DivRemNativeAmountResult) |  |  |
| native_amount_to_bytes_result | [NativeAmountToBytesResult](#massa-abi-v1-NativeAmountToBytesResult) |  |  |
| native_amount_from_bytes_result | [NativeAmountFromBytesResult](#massa-abi-v1-NativeAmountFromBytesResult) |  |  |






<a name="massa-abi-v1-ScalarDivRemNativeAmountRequest"></a>

### ScalarDivRemNativeAmountRequest
Division
try to compute quotient = dividend / divisor
if divisor == 0 then error


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dividend | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |
| divisor | [fixed64](#fixed64) |  |  |






<a name="massa-abi-v1-ScalarDivRemNativeAmountResult"></a>

### ScalarDivRemNativeAmountResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| quotient | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |
| remainder | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-SubNativeAmountsRequest"></a>

### SubNativeAmountsRequest
Substraction
if minued &gt;= substrahend then
    difference = minued - substrahend
    return difference


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| minuend | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |
| subtrahend | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-SubNativeAmountsResult"></a>

### SubNativeAmountsResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| difference | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-TransferCoinsRequest"></a>

### TransferCoinsRequest
TransferCoins


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  |  |
| amount_to_transfer | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |





 

 

 

 



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

