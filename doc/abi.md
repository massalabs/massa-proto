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
    - [Error](#massa-abi-v1-Error)
    - [FunctionExistsRequest](#massa-abi-v1-FunctionExistsRequest)
    - [FunctionExistsResponse](#massa-abi-v1-FunctionExistsResponse)
    - [GenerateEventRequest](#massa-abi-v1-GenerateEventRequest)
    - [LocalCallRequest](#massa-abi-v1-LocalCallRequest)
    - [LocalCallResponse](#massa-abi-v1-LocalCallResponse)
    - [MulNativeAmountRequest](#massa-abi-v1-MulNativeAmountRequest)
    - [MulNativeAmountResult](#massa-abi-v1-MulNativeAmountResult)
    - [NativeAddressFromStringRequest](#massa-abi-v1-NativeAddressFromStringRequest)
    - [NativeAddressFromStringResult](#massa-abi-v1-NativeAddressFromStringResult)
    - [NativeAddressToStringRequest](#massa-abi-v1-NativeAddressToStringRequest)
    - [NativeAddressToStringResult](#massa-abi-v1-NativeAddressToStringResult)
    - [NativeAmountFromStringRequest](#massa-abi-v1-NativeAmountFromStringRequest)
    - [NativeAmountFromStringResult](#massa-abi-v1-NativeAmountFromStringResult)
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
| res | [RespResult](#massa-abi-v1-RespResult) |  | variant for success |
| error | [Error](#massa-abi-v1-Error) |  | variant for error |






<a name="massa-abi-v1-AddNativeAmountsRequest"></a>

### AddNativeAmountsRequest
Amount addition request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount1 | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | First amount to add |
| amount2 | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Second amount to add |






<a name="massa-abi-v1-AddNativeAmountsResult"></a>

### AddNativeAmountsResult
Amount addition result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sum | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Sum of amounts |






<a name="massa-abi-v1-CallRequest"></a>

### CallRequest
CallSC


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_sc_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | Address of the smart contract to call |
| target_function_name | [string](#string) |  | Function to call in the targeted smart contract |
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
Check address request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_check | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | Address to check |






<a name="massa-abi-v1-CheckNativeAddressResult"></a>

### CheckNativeAddressResult
Check address result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_valid | [bool](#bool) |  | Is address valid |






<a name="massa-abi-v1-CheckNativeAmountRequest"></a>

### CheckNativeAmountRequest
Check Amount request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_check | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Amount to check |






<a name="massa-abi-v1-CheckNativeAmountResult"></a>

### CheckNativeAmountResult
Check Amount result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_valid | [bool](#bool) |  | Is Amount valid |






<a name="massa-abi-v1-CheckNativeHashRequest"></a>

### CheckNativeHashRequest
Check Hash request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_check | [massa.model.v1.NativeHash](#massa-model-v1-NativeHash) |  | Hash to check |






<a name="massa-abi-v1-CheckNativeHashResult"></a>

### CheckNativeHashResult
Check Hash result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_valid | [bool](#bool) |  | Is Hash valid |






<a name="massa-abi-v1-CheckNativePubKeyRequest"></a>

### CheckNativePubKeyRequest
Check PubKey request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_check | [massa.model.v1.NativePubKey](#massa-model-v1-NativePubKey) |  | PubKey to check |






<a name="massa-abi-v1-CheckNativePubKeyResult"></a>

### CheckNativePubKeyResult
Check PubKey result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_valid | [bool](#bool) |  | Is PubKey valid |






<a name="massa-abi-v1-CheckNativeSigRequest"></a>

### CheckNativeSigRequest
Check Sig request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_check | [massa.model.v1.NativeSig](#massa-model-v1-NativeSig) |  | Sig to check |






<a name="massa-abi-v1-CheckNativeSigResult"></a>

### CheckNativeSigResult
Check Sig result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_valid | [bool](#bool) |  | Is Sig valid |






<a name="massa-abi-v1-CreateSCRequest"></a>

### CreateSCRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| bytecode | [bytes](#bytes) |  | Bytecode is the compiled code of the smart contract |






<a name="massa-abi-v1-CreateSCResponse"></a>

### CreateSCResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sc_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | Address of the just created smart contract |






<a name="massa-abi-v1-DivRemNativeAmountRequest"></a>

### DivRemNativeAmountRequest
Amount division request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dividend | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Amount to divide |
| divisor | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Divisor to divide by |






<a name="massa-abi-v1-DivRemNativeAmountResult"></a>

### DivRemNativeAmountResult
Amount division result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| quotient | [fixed64](#fixed64) |  | Quotient of amount and divisor |
| remainder | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Remainder of amount and divisor |






<a name="massa-abi-v1-Error"></a>

### Error
Error message used in abi Response


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message | [string](#string) |  | a string representing the error |






<a name="massa-abi-v1-FunctionExistsRequest"></a>

### FunctionExistsRequest
FunctionExists


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_sc_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | Address of the smart contract to call |
| function_name | [string](#string) |  | The name of the function to check the existance of |






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
| target_sc_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | Address of the smart contract to call |
| target_function_name | [string](#string) |  | Function to call in the targeted smart contract |
| function_arg | [bytes](#bytes) |  | Argument to the function serialized in a byte array. |






<a name="massa-abi-v1-LocalCallResponse"></a>

### LocalCallResponse
LocalCallResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [bytes](#bytes) |  | Return_data is the return value of the function |






<a name="massa-abi-v1-MulNativeAmountRequest"></a>

### MulNativeAmountRequest
Amount multiplication request
Try to compute product = amount * coefficient (fail if overflow)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Amount to multiply |
| coefficient | [fixed64](#fixed64) |  | Coefficient to multiply by |






<a name="massa-abi-v1-MulNativeAmountResult"></a>

### MulNativeAmountResult
Amount multiplication result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| product | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Product of amount and coefficient |






<a name="massa-abi-v1-NativeAddressFromStringRequest"></a>

### NativeAddressFromStringRequest
Address from string request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  | String to convert to address |






<a name="massa-abi-v1-NativeAddressFromStringResult"></a>

### NativeAddressFromStringResult
Address from string result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | Converted address |






<a name="massa-abi-v1-NativeAddressToStringRequest"></a>

### NativeAddressToStringRequest
Address to string request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | Address to convert to string |






<a name="massa-abi-v1-NativeAddressToStringResult"></a>

### NativeAddressToStringResult
Address to string result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_address | [string](#string) |  | Converted address |






<a name="massa-abi-v1-NativeAmountFromStringRequest"></a>

### NativeAmountFromStringRequest
Amount from string request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  | String to convert to Amount |






<a name="massa-abi-v1-NativeAmountFromStringResult"></a>

### NativeAmountFromStringResult
Amount from string result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_amount | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Converted Amount |






<a name="massa-abi-v1-NativeAmountToStringRequest"></a>

### NativeAmountToStringRequest
Amount to string request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Amount to convert to string |






<a name="massa-abi-v1-NativeAmountToStringResult"></a>

### NativeAmountToStringResult
Amount to string result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_amount | [string](#string) |  | Converted Amount |






<a name="massa-abi-v1-NativeHashFromStringRequest"></a>

### NativeHashFromStringRequest
Hash from string request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  | String to convert to Hash |






<a name="massa-abi-v1-NativeHashFromStringResult"></a>

### NativeHashFromStringResult
Hash from string result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_hash | [massa.model.v1.NativeHash](#massa-model-v1-NativeHash) |  | Converted Hash |






<a name="massa-abi-v1-NativeHashToStringRequest"></a>

### NativeHashToStringRequest
Hash to string request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativeHash](#massa-model-v1-NativeHash) |  | Hash to convert to string |






<a name="massa-abi-v1-NativeHashToStringResult"></a>

### NativeHashToStringResult
Hash to string result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_hash | [string](#string) |  | Converted Hash |






<a name="massa-abi-v1-NativePubKeyFromStringRequest"></a>

### NativePubKeyFromStringRequest
PubKey from string request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  | String to convert to PubKey |






<a name="massa-abi-v1-NativePubKeyFromStringResult"></a>

### NativePubKeyFromStringResult
PubKey from string result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_pubkey | [massa.model.v1.NativePubKey](#massa-model-v1-NativePubKey) |  | Converted PubKey |






<a name="massa-abi-v1-NativePubKeyToStringRequest"></a>

### NativePubKeyToStringRequest
PubKey to string request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativePubKey](#massa-model-v1-NativePubKey) |  | PubKey to convert to string |






<a name="massa-abi-v1-NativePubKeyToStringResult"></a>

### NativePubKeyToStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_pubkey | [string](#string) |  | Converted PubKey |






<a name="massa-abi-v1-NativeSigFromStringRequest"></a>

### NativeSigFromStringRequest
Sig from string request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  | String to convert to Sig |






<a name="massa-abi-v1-NativeSigFromStringResult"></a>

### NativeSigFromStringResult
Sig from string result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_sig | [massa.model.v1.NativeSig](#massa-model-v1-NativeSig) |  | Converted Sig |






<a name="massa-abi-v1-NativeSigToStringRequest"></a>

### NativeSigToStringRequest
Sig to string request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativeSig](#massa-model-v1-NativeSig) |  | Sig to convert to string |






<a name="massa-abi-v1-NativeSigToStringResult"></a>

### NativeSigToStringResult
Sig to string result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_sig | [string](#string) |  | Converted Sig |






<a name="massa-abi-v1-RespResult"></a>

### RespResult
Message returned in case of success of an ABI call.
See the documentation of the specific result for the meaning of the fields.
Call RespResult because Result will conflict with the Result type in Rust
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






<a name="massa-abi-v1-ScalarDivRemNativeAmountRequest"></a>

### ScalarDivRemNativeAmountRequest
Amount division by scalar request
Try to compute quotient = dividend / divisor
Fails if divisor == 0
Fails if underflow


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dividend | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Amount to divide |
| divisor | [fixed64](#fixed64) |  | Divisor to divide by |






<a name="massa-abi-v1-ScalarDivRemNativeAmountResult"></a>

### ScalarDivRemNativeAmountResult
Amount division by scalar result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| quotient | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Quotient of amount and divisor |
| remainder | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Remainder of amount and divisor |






<a name="massa-abi-v1-SubNativeAmountsRequest"></a>

### SubNativeAmountsRequest
Amount subtraction request
try to compute difference = left - right
fails if right &gt; left


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| left | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | First amount to subtract from |
| right | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Second amount to subtract |






<a name="massa-abi-v1-SubNativeAmountsResult"></a>

### SubNativeAmountsResult
Amount subtraction result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| difference | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Difference of amounts (left - right) |






<a name="massa-abi-v1-TransferCoinsRequest"></a>

### TransferCoinsRequest
TransferCoins


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | The address of the recipient |
| amount_to_transfer | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | The amount of coins to transfer |





 

 

 

 



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

