# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [massa/abi/v1/abi.proto](#massa_abi_v1_abi-proto)
    - [AddNativeAmountsRequest](#massa-abi-v1-AddNativeAmountsRequest)
    - [AddNativeAmountsResponse](#massa-abi-v1-AddNativeAmountsResponse)
    - [AddNativeAmountsResponse.AddNativeAmountsResult](#massa-abi-v1-AddNativeAmountsResponse-AddNativeAmountsResult)
    - [CallRequest](#massa-abi-v1-CallRequest)
    - [CallResponse](#massa-abi-v1-CallResponse)
    - [CheckNativeAddressRequest](#massa-abi-v1-CheckNativeAddressRequest)
    - [CheckNativeAddressResponse](#massa-abi-v1-CheckNativeAddressResponse)
    - [CheckNativeAddressResponse.CheckNativeAddressResult](#massa-abi-v1-CheckNativeAddressResponse-CheckNativeAddressResult)
    - [CheckNativeAmountRequest](#massa-abi-v1-CheckNativeAmountRequest)
    - [CheckNativeAmountResponse](#massa-abi-v1-CheckNativeAmountResponse)
    - [CheckNativeAmountResponse.CheckNativeAmountResult](#massa-abi-v1-CheckNativeAmountResponse-CheckNativeAmountResult)
    - [CheckNativeHashRequest](#massa-abi-v1-CheckNativeHashRequest)
    - [CheckNativeHashResponse](#massa-abi-v1-CheckNativeHashResponse)
    - [CheckNativeHashResponse.CheckNativeHashResult](#massa-abi-v1-CheckNativeHashResponse-CheckNativeHashResult)
    - [CheckNativePubKeyRequest](#massa-abi-v1-CheckNativePubKeyRequest)
    - [CheckNativePubKeyResponse](#massa-abi-v1-CheckNativePubKeyResponse)
    - [CheckNativePubKeyResponse.CheckNativePubKeyResult](#massa-abi-v1-CheckNativePubKeyResponse-CheckNativePubKeyResult)
    - [CheckNativeSigRequest](#massa-abi-v1-CheckNativeSigRequest)
    - [CheckNativeSigResponse](#massa-abi-v1-CheckNativeSigResponse)
    - [CheckNativeSigResponse.CheckNativeSigResult](#massa-abi-v1-CheckNativeSigResponse-CheckNativeSigResult)
    - [CreateSCRequest](#massa-abi-v1-CreateSCRequest)
    - [CreateSCResponse](#massa-abi-v1-CreateSCResponse)
    - [DivRemNativeAmountRequest](#massa-abi-v1-DivRemNativeAmountRequest)
    - [DivRemNativeAmountResponse](#massa-abi-v1-DivRemNativeAmountResponse)
    - [DivRemNativeAmountResponse.DivRemNativeAmountResult](#massa-abi-v1-DivRemNativeAmountResponse-DivRemNativeAmountResult)
    - [Empty](#massa-abi-v1-Empty)
    - [Error](#massa-abi-v1-Error)
    - [FunctionExistsRequest](#massa-abi-v1-FunctionExistsRequest)
    - [FunctionExistsResponse](#massa-abi-v1-FunctionExistsResponse)
    - [GenerateEventRequest](#massa-abi-v1-GenerateEventRequest)
    - [LocalCallRequest](#massa-abi-v1-LocalCallRequest)
    - [LocalCallResponse](#massa-abi-v1-LocalCallResponse)
    - [LogRequest](#massa-abi-v1-LogRequest)
    - [MulNativeAmountRequest](#massa-abi-v1-MulNativeAmountRequest)
    - [MulNativeAmountResponse](#massa-abi-v1-MulNativeAmountResponse)
    - [MulNativeAmountResponse.MulNativeAmountResult](#massa-abi-v1-MulNativeAmountResponse-MulNativeAmountResult)
    - [NativeAddressFromStringRequest](#massa-abi-v1-NativeAddressFromStringRequest)
    - [NativeAddressFromStringResponse](#massa-abi-v1-NativeAddressFromStringResponse)
    - [NativeAddressFromStringResponse.NativeAddressFromStringResult](#massa-abi-v1-NativeAddressFromStringResponse-NativeAddressFromStringResult)
    - [NativeAddressToStringRequest](#massa-abi-v1-NativeAddressToStringRequest)
    - [NativeAddressToStringResponse](#massa-abi-v1-NativeAddressToStringResponse)
    - [NativeAddressToStringResponse.NativeAddressToStringResult](#massa-abi-v1-NativeAddressToStringResponse-NativeAddressToStringResult)
    - [NativeAmountFromBytesRequest](#massa-abi-v1-NativeAmountFromBytesRequest)
    - [NativeAmountFromBytesResponse](#massa-abi-v1-NativeAmountFromBytesResponse)
    - [NativeAmountFromBytesResponse.NativeAmountFromBytesResult](#massa-abi-v1-NativeAmountFromBytesResponse-NativeAmountFromBytesResult)
    - [NativeAmountFromStringRequest](#massa-abi-v1-NativeAmountFromStringRequest)
    - [NativeAmountFromStringResponse](#massa-abi-v1-NativeAmountFromStringResponse)
    - [NativeAmountFromStringResponse.NativeAmountFromStringResult](#massa-abi-v1-NativeAmountFromStringResponse-NativeAmountFromStringResult)
    - [NativeAmountToBytesRequest](#massa-abi-v1-NativeAmountToBytesRequest)
    - [NativeAmountToBytesResponse](#massa-abi-v1-NativeAmountToBytesResponse)
    - [NativeAmountToBytesResponse.NativeAmountToBytesResult](#massa-abi-v1-NativeAmountToBytesResponse-NativeAmountToBytesResult)
    - [NativeAmountToStringRequest](#massa-abi-v1-NativeAmountToStringRequest)
    - [NativeAmountToStringResponse](#massa-abi-v1-NativeAmountToStringResponse)
    - [NativeAmountToStringResponse.NativeAmountToStringResult](#massa-abi-v1-NativeAmountToStringResponse-NativeAmountToStringResult)
    - [NativeHashFromStringRequest](#massa-abi-v1-NativeHashFromStringRequest)
    - [NativeHashFromStringResponse](#massa-abi-v1-NativeHashFromStringResponse)
    - [NativeHashFromStringResponse.NativeHashFromStringResult](#massa-abi-v1-NativeHashFromStringResponse-NativeHashFromStringResult)
    - [NativeHashToStringRequest](#massa-abi-v1-NativeHashToStringRequest)
    - [NativeHashToStringResponse](#massa-abi-v1-NativeHashToStringResponse)
    - [NativeHashToStringResponse.NativeHashToStringResult](#massa-abi-v1-NativeHashToStringResponse-NativeHashToStringResult)
    - [NativePubKeyFromStringRequest](#massa-abi-v1-NativePubKeyFromStringRequest)
    - [NativePubKeyFromStringResponse](#massa-abi-v1-NativePubKeyFromStringResponse)
    - [NativePubKeyFromStringResponse.NativePubKeyFromStringResult](#massa-abi-v1-NativePubKeyFromStringResponse-NativePubKeyFromStringResult)
    - [NativePubKeyToStringRequest](#massa-abi-v1-NativePubKeyToStringRequest)
    - [NativePubKeyToStringResponse](#massa-abi-v1-NativePubKeyToStringResponse)
    - [NativePubKeyToStringResponse.NativePubKeyToStringResult](#massa-abi-v1-NativePubKeyToStringResponse-NativePubKeyToStringResult)
    - [NativeSigFromStringRequest](#massa-abi-v1-NativeSigFromStringRequest)
    - [NativeSigFromStringResponse](#massa-abi-v1-NativeSigFromStringResponse)
    - [NativeSigFromStringResponse.NativeSigFromStringResult](#massa-abi-v1-NativeSigFromStringResponse-NativeSigFromStringResult)
    - [NativeSigToStringRequest](#massa-abi-v1-NativeSigToStringRequest)
    - [NativeSigToStringResponse](#massa-abi-v1-NativeSigToStringResponse)
    - [NativeSigToStringResponse.NativeSigToStringResult](#massa-abi-v1-NativeSigToStringResponse-NativeSigToStringResult)
    - [ScalarDivRemNativeAmountRequest](#massa-abi-v1-ScalarDivRemNativeAmountRequest)
    - [ScalarDivRemNativeAmountResponse](#massa-abi-v1-ScalarDivRemNativeAmountResponse)
    - [ScalarDivRemNativeAmountResponse.ScalarDivRemNativeAmountResult](#massa-abi-v1-ScalarDivRemNativeAmountResponse-ScalarDivRemNativeAmountResult)
    - [SubNativeAmountsRequest](#massa-abi-v1-SubNativeAmountsRequest)
    - [SubNativeAmountsResponse](#massa-abi-v1-SubNativeAmountsResponse)
    - [SubNativeAmountsResponse.SubNativeAmountsResult](#massa-abi-v1-SubNativeAmountsResponse-SubNativeAmountsResult)
    - [TransferCoinsRequest](#massa-abi-v1-TransferCoinsRequest)
  
- [Scalar Value Types](#scalar-value-types)



<a name="massa_abi_v1_abi-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/abi/v1/abi.proto



<a name="massa-abi-v1-AddNativeAmountsRequest"></a>

### AddNativeAmountsRequest
Addition


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount1 | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |
| amount2 | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-AddNativeAmountsResponse"></a>

### AddNativeAmountsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [AddNativeAmountsResponse.AddNativeAmountsResult](#massa-abi-v1-AddNativeAmountsResponse-AddNativeAmountsResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-AddNativeAmountsResponse-AddNativeAmountsResult"></a>

### AddNativeAmountsResponse.AddNativeAmountsResult



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






<a name="massa-abi-v1-CheckNativeAddressResponse"></a>

### CheckNativeAddressResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [CheckNativeAddressResponse.CheckNativeAddressResult](#massa-abi-v1-CheckNativeAddressResponse-CheckNativeAddressResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-CheckNativeAddressResponse-CheckNativeAddressResult"></a>

### CheckNativeAddressResponse.CheckNativeAddressResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_valid | [bool](#bool) |  |  |






<a name="massa-abi-v1-CheckNativeAmountRequest"></a>

### CheckNativeAmountRequest
check_native_amount


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_check | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-CheckNativeAmountResponse"></a>

### CheckNativeAmountResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [CheckNativeAmountResponse.CheckNativeAmountResult](#massa-abi-v1-CheckNativeAmountResponse-CheckNativeAmountResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-CheckNativeAmountResponse-CheckNativeAmountResult"></a>

### CheckNativeAmountResponse.CheckNativeAmountResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_valid | [bool](#bool) |  |  |






<a name="massa-abi-v1-CheckNativeHashRequest"></a>

### CheckNativeHashRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_check | [massa.model.v1.NativeHash](#massa-model-v1-NativeHash) |  |  |






<a name="massa-abi-v1-CheckNativeHashResponse"></a>

### CheckNativeHashResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [CheckNativeHashResponse.CheckNativeHashResult](#massa-abi-v1-CheckNativeHashResponse-CheckNativeHashResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-CheckNativeHashResponse-CheckNativeHashResult"></a>

### CheckNativeHashResponse.CheckNativeHashResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_valid | [bool](#bool) |  |  |






<a name="massa-abi-v1-CheckNativePubKeyRequest"></a>

### CheckNativePubKeyRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_check | [massa.model.v1.NativePubKey](#massa-model-v1-NativePubKey) |  |  |






<a name="massa-abi-v1-CheckNativePubKeyResponse"></a>

### CheckNativePubKeyResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [CheckNativePubKeyResponse.CheckNativePubKeyResult](#massa-abi-v1-CheckNativePubKeyResponse-CheckNativePubKeyResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-CheckNativePubKeyResponse-CheckNativePubKeyResult"></a>

### CheckNativePubKeyResponse.CheckNativePubKeyResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_valid | [bool](#bool) |  |  |






<a name="massa-abi-v1-CheckNativeSigRequest"></a>

### CheckNativeSigRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_check | [massa.model.v1.NativeSig](#massa-model-v1-NativeSig) |  |  |






<a name="massa-abi-v1-CheckNativeSigResponse"></a>

### CheckNativeSigResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [CheckNativeSigResponse.CheckNativeSigResult](#massa-abi-v1-CheckNativeSigResponse-CheckNativeSigResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-CheckNativeSigResponse-CheckNativeSigResult"></a>

### CheckNativeSigResponse.CheckNativeSigResult



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






<a name="massa-abi-v1-DivRemNativeAmountResponse"></a>

### DivRemNativeAmountResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [DivRemNativeAmountResponse.DivRemNativeAmountResult](#massa-abi-v1-DivRemNativeAmountResponse-DivRemNativeAmountResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-DivRemNativeAmountResponse-DivRemNativeAmountResult"></a>

### DivRemNativeAmountResponse.DivRemNativeAmountResult



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






<a name="massa-abi-v1-MulNativeAmountResponse"></a>

### MulNativeAmountResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [MulNativeAmountResponse.MulNativeAmountResult](#massa-abi-v1-MulNativeAmountResponse-MulNativeAmountResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-MulNativeAmountResponse-MulNativeAmountResult"></a>

### MulNativeAmountResponse.MulNativeAmountResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| product | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-NativeAddressFromStringRequest"></a>

### NativeAddressFromStringRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  |  |






<a name="massa-abi-v1-NativeAddressFromStringResponse"></a>

### NativeAddressFromStringResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [NativeAddressFromStringResponse.NativeAddressFromStringResult](#massa-abi-v1-NativeAddressFromStringResponse-NativeAddressFromStringResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-NativeAddressFromStringResponse-NativeAddressFromStringResult"></a>

### NativeAddressFromStringResponse.NativeAddressFromStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  |  |






<a name="massa-abi-v1-NativeAddressToStringRequest"></a>

### NativeAddressToStringRequest
To string


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  |  |






<a name="massa-abi-v1-NativeAddressToStringResponse"></a>

### NativeAddressToStringResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [NativeAddressToStringResponse.NativeAddressToStringResult](#massa-abi-v1-NativeAddressToStringResponse-NativeAddressToStringResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-NativeAddressToStringResponse-NativeAddressToStringResult"></a>

### NativeAddressToStringResponse.NativeAddressToStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_address | [string](#string) |  |  |






<a name="massa-abi-v1-NativeAmountFromBytesRequest"></a>

### NativeAmountFromBytesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [bytes](#bytes) |  |  |






<a name="massa-abi-v1-NativeAmountFromBytesResponse"></a>

### NativeAmountFromBytesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [NativeAmountFromBytesResponse.NativeAmountFromBytesResult](#massa-abi-v1-NativeAmountFromBytesResponse-NativeAmountFromBytesResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-NativeAmountFromBytesResponse-NativeAmountFromBytesResult"></a>

### NativeAmountFromBytesResponse.NativeAmountFromBytesResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-NativeAmountFromStringRequest"></a>

### NativeAmountFromStringRequest
native_amount_from_string


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  |  |






<a name="massa-abi-v1-NativeAmountFromStringResponse"></a>

### NativeAmountFromStringResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [NativeAmountFromStringResponse.NativeAmountFromStringResult](#massa-abi-v1-NativeAmountFromStringResponse-NativeAmountFromStringResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-NativeAmountFromStringResponse-NativeAmountFromStringResult"></a>

### NativeAmountFromStringResponse.NativeAmountFromStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_amount | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-NativeAmountToBytesRequest"></a>

### NativeAmountToBytesRequest
massa.model.v1.NativeAmount from and to byte array


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-NativeAmountToBytesResponse"></a>

### NativeAmountToBytesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [NativeAmountToBytesResponse.NativeAmountToBytesResult](#massa-abi-v1-NativeAmountToBytesResponse-NativeAmountToBytesResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-NativeAmountToBytesResponse-NativeAmountToBytesResult"></a>

### NativeAmountToBytesResponse.NativeAmountToBytesResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [bytes](#bytes) |  |  |






<a name="massa-abi-v1-NativeAmountToStringRequest"></a>

### NativeAmountToStringRequest
native_amount_to_string


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |






<a name="massa-abi-v1-NativeAmountToStringResponse"></a>

### NativeAmountToStringResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [NativeAmountToStringResponse.NativeAmountToStringResult](#massa-abi-v1-NativeAmountToStringResponse-NativeAmountToStringResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-NativeAmountToStringResponse-NativeAmountToStringResult"></a>

### NativeAmountToStringResponse.NativeAmountToStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_amount | [string](#string) |  |  |






<a name="massa-abi-v1-NativeHashFromStringRequest"></a>

### NativeHashFromStringRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  |  |






<a name="massa-abi-v1-NativeHashFromStringResponse"></a>

### NativeHashFromStringResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [NativeHashFromStringResponse.NativeHashFromStringResult](#massa-abi-v1-NativeHashFromStringResponse-NativeHashFromStringResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-NativeHashFromStringResponse-NativeHashFromStringResult"></a>

### NativeHashFromStringResponse.NativeHashFromStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_hash | [massa.model.v1.NativeHash](#massa-model-v1-NativeHash) |  |  |






<a name="massa-abi-v1-NativeHashToStringRequest"></a>

### NativeHashToStringRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativeHash](#massa-model-v1-NativeHash) |  |  |






<a name="massa-abi-v1-NativeHashToStringResponse"></a>

### NativeHashToStringResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [NativeHashToStringResponse.NativeHashToStringResult](#massa-abi-v1-NativeHashToStringResponse-NativeHashToStringResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-NativeHashToStringResponse-NativeHashToStringResult"></a>

### NativeHashToStringResponse.NativeHashToStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_hash | [string](#string) |  |  |






<a name="massa-abi-v1-NativePubKeyFromStringRequest"></a>

### NativePubKeyFromStringRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  |  |






<a name="massa-abi-v1-NativePubKeyFromStringResponse"></a>

### NativePubKeyFromStringResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [NativePubKeyFromStringResponse.NativePubKeyFromStringResult](#massa-abi-v1-NativePubKeyFromStringResponse-NativePubKeyFromStringResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-NativePubKeyFromStringResponse-NativePubKeyFromStringResult"></a>

### NativePubKeyFromStringResponse.NativePubKeyFromStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_pubkey | [massa.model.v1.NativePubKey](#massa-model-v1-NativePubKey) |  |  |






<a name="massa-abi-v1-NativePubKeyToStringRequest"></a>

### NativePubKeyToStringRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativePubKey](#massa-model-v1-NativePubKey) |  |  |






<a name="massa-abi-v1-NativePubKeyToStringResponse"></a>

### NativePubKeyToStringResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [NativePubKeyToStringResponse.NativePubKeyToStringResult](#massa-abi-v1-NativePubKeyToStringResponse-NativePubKeyToStringResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-NativePubKeyToStringResponse-NativePubKeyToStringResult"></a>

### NativePubKeyToStringResponse.NativePubKeyToStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_pubkey | [string](#string) |  |  |






<a name="massa-abi-v1-NativeSigFromStringRequest"></a>

### NativeSigFromStringRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [string](#string) |  |  |






<a name="massa-abi-v1-NativeSigFromStringResponse"></a>

### NativeSigFromStringResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [NativeSigFromStringResponse.NativeSigFromStringResult](#massa-abi-v1-NativeSigFromStringResponse-NativeSigFromStringResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-NativeSigFromStringResponse-NativeSigFromStringResult"></a>

### NativeSigFromStringResponse.NativeSigFromStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_sig | [massa.model.v1.NativeSig](#massa-model-v1-NativeSig) |  |  |






<a name="massa-abi-v1-NativeSigToStringRequest"></a>

### NativeSigToStringRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to_convert | [massa.model.v1.NativeSig](#massa-model-v1-NativeSig) |  |  |






<a name="massa-abi-v1-NativeSigToStringResponse"></a>

### NativeSigToStringResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [NativeSigToStringResponse.NativeSigToStringResult](#massa-abi-v1-NativeSigToStringResponse-NativeSigToStringResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-NativeSigToStringResponse-NativeSigToStringResult"></a>

### NativeSigToStringResponse.NativeSigToStringResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| converted_sig | [string](#string) |  |  |






<a name="massa-abi-v1-ScalarDivRemNativeAmountRequest"></a>

### ScalarDivRemNativeAmountRequest
Division
try to compute quotient = dividend / divisor
if divisor == 0 then error


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dividend | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  |  |
| divisor | [fixed64](#fixed64) |  |  |






<a name="massa-abi-v1-ScalarDivRemNativeAmountResponse"></a>

### ScalarDivRemNativeAmountResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [ScalarDivRemNativeAmountResponse.ScalarDivRemNativeAmountResult](#massa-abi-v1-ScalarDivRemNativeAmountResponse-ScalarDivRemNativeAmountResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-ScalarDivRemNativeAmountResponse-ScalarDivRemNativeAmountResult"></a>

### ScalarDivRemNativeAmountResponse.ScalarDivRemNativeAmountResult



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






<a name="massa-abi-v1-SubNativeAmountsResponse"></a>

### SubNativeAmountsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| res | [SubNativeAmountsResponse.SubNativeAmountsResult](#massa-abi-v1-SubNativeAmountsResponse-SubNativeAmountsResult) |  |  |
| error | [Error](#massa-abi-v1-Error) |  |  |






<a name="massa-abi-v1-SubNativeAmountsResponse-SubNativeAmountsResult"></a>

### SubNativeAmountsResponse.SubNativeAmountsResult



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

