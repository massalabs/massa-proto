# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [massa/abi/v1/abi.proto](#massa_abi_v1_abi-proto)
    - [AbiResponse](#massa-abi-v1-AbiResponse)
    - [AddNativeAmountsRequest](#massa-abi-v1-AddNativeAmountsRequest)
    - [AddNativeAmountsResult](#massa-abi-v1-AddNativeAmountsResult)
    - [AppendDataForRequest](#massa-abi-v1-AppendDataForRequest)
    - [AppendDataForResult](#massa-abi-v1-AppendDataForResult)
    - [AppendDataRequest](#massa-abi-v1-AppendDataRequest)
    - [AppendDataResult](#massa-abi-v1-AppendDataResult)
    - [CallRequest](#massa-abi-v1-CallRequest)
    - [CallResponse](#massa-abi-v1-CallResponse)
    - [CallerHasWriteAccessRequest](#massa-abi-v1-CallerHasWriteAccessRequest)
    - [CallerHasWriteAccessResult](#massa-abi-v1-CallerHasWriteAccessResult)
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
    - [CheckedAddNativeTimeRequest](#massa-abi-v1-CheckedAddNativeTimeRequest)
    - [CheckedAddNativeTimeResult](#massa-abi-v1-CheckedAddNativeTimeResult)
    - [CheckedDivRemNativeTimeRequest](#massa-abi-v1-CheckedDivRemNativeTimeRequest)
    - [CheckedDivRemNativeTimeResult](#massa-abi-v1-CheckedDivRemNativeTimeResult)
    - [CheckedMulNativeTimeRequest](#massa-abi-v1-CheckedMulNativeTimeRequest)
    - [CheckedMulNativeTimeResult](#massa-abi-v1-CheckedMulNativeTimeResult)
    - [CheckedScalarDivRemNativeTimeRequest](#massa-abi-v1-CheckedScalarDivRemNativeTimeRequest)
    - [CheckedScalarDivRemNativeTimeResult](#massa-abi-v1-CheckedScalarDivRemNativeTimeResult)
    - [CheckedSubNativeTimeRequest](#massa-abi-v1-CheckedSubNativeTimeRequest)
    - [CheckedSubNativeTimeResult](#massa-abi-v1-CheckedSubNativeTimeResult)
    - [CompareNativeAddressRequest](#massa-abi-v1-CompareNativeAddressRequest)
    - [CompareNativeAddressResult](#massa-abi-v1-CompareNativeAddressResult)
    - [CompareNativeAmountRequest](#massa-abi-v1-CompareNativeAmountRequest)
    - [CompareNativeAmountResult](#massa-abi-v1-CompareNativeAmountResult)
    - [CompareNativePubKeyRequest](#massa-abi-v1-CompareNativePubKeyRequest)
    - [CompareNativePubKeyResult](#massa-abi-v1-CompareNativePubKeyResult)
    - [CompareNativeSigRequest](#massa-abi-v1-CompareNativeSigRequest)
    - [CompareNativeSigResult](#massa-abi-v1-CompareNativeSigResult)
    - [CompareNativeTimeRequest](#massa-abi-v1-CompareNativeTimeRequest)
    - [CompareNativeTimeResult](#massa-abi-v1-CompareNativeTimeResult)
    - [ComparisonResult](#massa-abi-v1-ComparisonResult)
    - [ComparisonResult.Equal](#massa-abi-v1-ComparisonResult-Equal)
    - [ComparisonResult.LeftGreater](#massa-abi-v1-ComparisonResult-LeftGreater)
    - [ComparisonResult.LeftLower](#massa-abi-v1-ComparisonResult-LeftLower)
    - [ConsolePutRequest](#massa-abi-v1-ConsolePutRequest)
    - [ConsolePutResult](#massa-abi-v1-ConsolePutResult)
    - [CreateScRequest](#massa-abi-v1-CreateScRequest)
    - [CreateScResult](#massa-abi-v1-CreateScResult)
    - [DateNowRequest](#massa-abi-v1-DateNowRequest)
    - [DateNowResult](#massa-abi-v1-DateNowResult)
    - [DeleteDataForRequest](#massa-abi-v1-DeleteDataForRequest)
    - [DeleteDataForResult](#massa-abi-v1-DeleteDataForResult)
    - [DeleteDataRequest](#massa-abi-v1-DeleteDataRequest)
    - [DeleteDataResult](#massa-abi-v1-DeleteDataResult)
    - [DivRemNativeAmountRequest](#massa-abi-v1-DivRemNativeAmountRequest)
    - [DivRemNativeAmountResult](#massa-abi-v1-DivRemNativeAmountResult)
    - [Error](#massa-abi-v1-Error)
    - [FunctionExistsRequest](#massa-abi-v1-FunctionExistsRequest)
    - [FunctionExistsResult](#massa-abi-v1-FunctionExistsResult)
    - [GenerateEventRequest](#massa-abi-v1-GenerateEventRequest)
    - [GenerateEventResult](#massa-abi-v1-GenerateEventResult)
    - [GetBalanceForRequest](#massa-abi-v1-GetBalanceForRequest)
    - [GetBalanceForResult](#massa-abi-v1-GetBalanceForResult)
    - [GetBalanceRequest](#massa-abi-v1-GetBalanceRequest)
    - [GetBalanceResult](#massa-abi-v1-GetBalanceResult)
    - [GetBytecodeForRequest](#massa-abi-v1-GetBytecodeForRequest)
    - [GetBytecodeForResult](#massa-abi-v1-GetBytecodeForResult)
    - [GetBytecodeRequest](#massa-abi-v1-GetBytecodeRequest)
    - [GetBytecodeResult](#massa-abi-v1-GetBytecodeResult)
    - [GetCallCoinsRequest](#massa-abi-v1-GetCallCoinsRequest)
    - [GetCallCoinsResult](#massa-abi-v1-GetCallCoinsResult)
    - [GetCallStackRequest](#massa-abi-v1-GetCallStackRequest)
    - [GetCallStackResult](#massa-abi-v1-GetCallStackResult)
    - [GetCurrentPeriodRequest](#massa-abi-v1-GetCurrentPeriodRequest)
    - [GetCurrentPeriodResult](#massa-abi-v1-GetCurrentPeriodResult)
    - [GetCurrentThreadRequest](#massa-abi-v1-GetCurrentThreadRequest)
    - [GetCurrentThreadResult](#massa-abi-v1-GetCurrentThreadResult)
    - [GetDataForRequest](#massa-abi-v1-GetDataForRequest)
    - [GetDataForResult](#massa-abi-v1-GetDataForResult)
    - [GetDataRequest](#massa-abi-v1-GetDataRequest)
    - [GetDataResult](#massa-abi-v1-GetDataResult)
    - [GetKeysForRequest](#massa-abi-v1-GetKeysForRequest)
    - [GetKeysForResult](#massa-abi-v1-GetKeysForResult)
    - [GetKeysRequest](#massa-abi-v1-GetKeysRequest)
    - [GetKeysResult](#massa-abi-v1-GetKeysResult)
    - [GetNativeTimeRequest](#massa-abi-v1-GetNativeTimeRequest)
    - [GetNativeTimeResult](#massa-abi-v1-GetNativeTimeResult)
    - [GetOpDataRequest](#massa-abi-v1-GetOpDataRequest)
    - [GetOpDataResult](#massa-abi-v1-GetOpDataResult)
    - [GetOpKeysRequest](#massa-abi-v1-GetOpKeysRequest)
    - [GetOpKeysResult](#massa-abi-v1-GetOpKeysResult)
    - [GetOwnedAddressesRequest](#massa-abi-v1-GetOwnedAddressesRequest)
    - [GetOwnedAddressesResult](#massa-abi-v1-GetOwnedAddressesResult)
    - [GetRemainingGasRequest](#massa-abi-v1-GetRemainingGasRequest)
    - [GetRemainingGasResult](#massa-abi-v1-GetRemainingGasResult)
    - [HasDataForRequest](#massa-abi-v1-HasDataForRequest)
    - [HasDataForResult](#massa-abi-v1-HasDataForResult)
    - [HasDataRequest](#massa-abi-v1-HasDataRequest)
    - [HasDataResult](#massa-abi-v1-HasDataResult)
    - [HasOpKeyRequest](#massa-abi-v1-HasOpKeyRequest)
    - [HasOpKeyResult](#massa-abi-v1-HasOpKeyResult)
    - [HashSha256Request](#massa-abi-v1-HashSha256Request)
    - [HashSha256Result](#massa-abi-v1-HashSha256Result)
    - [Keccak256Request](#massa-abi-v1-Keccak256Request)
    - [Keccak256Result](#massa-abi-v1-Keccak256Result)
    - [LocalExecutionRequest](#massa-abi-v1-LocalExecutionRequest)
    - [LocalExecutionResponse](#massa-abi-v1-LocalExecutionResponse)
    - [MulNativeAmountRequest](#massa-abi-v1-MulNativeAmountRequest)
    - [MulNativeAmountResult](#massa-abi-v1-MulNativeAmountResult)
    - [NativeAddressFromNativePubKeyRequest](#massa-abi-v1-NativeAddressFromNativePubKeyRequest)
    - [NativeAddressFromNativePubKeyResult](#massa-abi-v1-NativeAddressFromNativePubKeyResult)
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
    - [NativeHashRequest](#massa-abi-v1-NativeHashRequest)
    - [NativeHashResult](#massa-abi-v1-NativeHashResult)
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
    - [PrintRequest](#massa-abi-v1-PrintRequest)
    - [PrintResult](#massa-abi-v1-PrintResult)
    - [ProcessExitRequest](#massa-abi-v1-ProcessExitRequest)
    - [ProcessExitResult](#massa-abi-v1-ProcessExitResult)
    - [RespResult](#massa-abi-v1-RespResult)
    - [ScalarDivRemNativeAmountRequest](#massa-abi-v1-ScalarDivRemNativeAmountRequest)
    - [ScalarDivRemNativeAmountResult](#massa-abi-v1-ScalarDivRemNativeAmountResult)
    - [SeedRequest](#massa-abi-v1-SeedRequest)
    - [SeedResult](#massa-abi-v1-SeedResult)
    - [SetBytecodeForRequest](#massa-abi-v1-SetBytecodeForRequest)
    - [SetBytecodeForResult](#massa-abi-v1-SetBytecodeForResult)
    - [SetBytecodeRequest](#massa-abi-v1-SetBytecodeRequest)
    - [SetBytecodeResult](#massa-abi-v1-SetBytecodeResult)
    - [SetDataForRequest](#massa-abi-v1-SetDataForRequest)
    - [SetDataForResult](#massa-abi-v1-SetDataForResult)
    - [SetDataRequest](#massa-abi-v1-SetDataRequest)
    - [SetDataResult](#massa-abi-v1-SetDataResult)
    - [SubNativeAmountsRequest](#massa-abi-v1-SubNativeAmountsRequest)
    - [SubNativeAmountsResult](#massa-abi-v1-SubNativeAmountsResult)
    - [TraceRequest](#massa-abi-v1-TraceRequest)
    - [TraceResult](#massa-abi-v1-TraceResult)
    - [TransferCoinsForRequest](#massa-abi-v1-TransferCoinsForRequest)
    - [TransferCoinsForResult](#massa-abi-v1-TransferCoinsForResult)
    - [TransferCoinsRequest](#massa-abi-v1-TransferCoinsRequest)
    - [TransferCoinsResult](#massa-abi-v1-TransferCoinsResult)
    - [UnsafeRandomRequest](#massa-abi-v1-UnsafeRandomRequest)
    - [UnsafeRandomResult](#massa-abi-v1-UnsafeRandomResult)
    - [VerifyBlsMultiSigRequest](#massa-abi-v1-VerifyBlsMultiSigRequest)
    - [VerifyBlsMultiSigResult](#massa-abi-v1-VerifyBlsMultiSigResult)
    - [VerifyBlsSingleSigRequest](#massa-abi-v1-VerifyBlsSingleSigRequest)
    - [VerifyBlsSingleSigResult](#massa-abi-v1-VerifyBlsSingleSigResult)
    - [VerifyEvmSigRequest](#massa-abi-v1-VerifyEvmSigRequest)
    - [VerifyEvmSigResult](#massa-abi-v1-VerifyEvmSigResult)
    - [VerifyNativeSigRequest](#massa-abi-v1-VerifyNativeSigRequest)
    - [VerifyNativeSigResult](#massa-abi-v1-VerifyNativeSigResult)
  
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






<a name="massa-abi-v1-AppendDataForRequest"></a>

### AppendDataForRequest
Append data for request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | NativeAddress to append data for |
| key | [bytes](#bytes) |  | key |
| value | [bytes](#bytes) |  | value |






<a name="massa-abi-v1-AppendDataForResult"></a>

### AppendDataForResult
Append data for result






<a name="massa-abi-v1-AppendDataRequest"></a>

### AppendDataRequest
Append data request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [bytes](#bytes) |  | key |
| value | [bytes](#bytes) |  | value |






<a name="massa-abi-v1-AppendDataResult"></a>

### AppendDataResult
Append data result






<a name="massa-abi-v1-CallRequest"></a>

### CallRequest
Call SC request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_sc_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | Address of the smart contract to call |
| target_function_name | [string](#string) |  | Function to call in the targeted smart contract |
| function_arg | [bytes](#bytes) |  | Argument to the function serialized in a byte array. |
| call_coins | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | call_coins is the amount of coins to pay for the call |






<a name="massa-abi-v1-CallResponse"></a>

### CallResponse
Call SC response


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [bytes](#bytes) |  | Return_data is the return value of the function |






<a name="massa-abi-v1-CallerHasWriteAccessRequest"></a>

### CallerHasWriteAccessRequest
Caller has write access request






<a name="massa-abi-v1-CallerHasWriteAccessResult"></a>

### CallerHasWriteAccessResult
Caller has write access result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| has_write_access | [bool](#bool) |  | Caller has write access |






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






<a name="massa-abi-v1-CheckedAddNativeTimeRequest"></a>

### CheckedAddNativeTimeRequest
Time addition checked request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| left | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | First time to add |
| right | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | Second time to add |






<a name="massa-abi-v1-CheckedAddNativeTimeResult"></a>

### CheckedAddNativeTimeResult
Time addition checked result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sum | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | Sum of times |






<a name="massa-abi-v1-CheckedDivRemNativeTimeRequest"></a>

### CheckedDivRemNativeTimeRequest
Time division checked request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dividend | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | Time to divide |
| divisor | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | Divisor to divide by |






<a name="massa-abi-v1-CheckedDivRemNativeTimeResult"></a>

### CheckedDivRemNativeTimeResult
Time division checked result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| quotient | [int64](#int64) |  | Quotient of time and divisor |
| remainder | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | Remainder of time and divisor |






<a name="massa-abi-v1-CheckedMulNativeTimeRequest"></a>

### CheckedMulNativeTimeRequest
Time scalar mult checked request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| time | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | Time to multiply |
| coefficient | [int64](#int64) |  | Coefficient to multiply by |






<a name="massa-abi-v1-CheckedMulNativeTimeResult"></a>

### CheckedMulNativeTimeResult
Time scalar mult checked result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| product | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | Product of time and coefficient |






<a name="massa-abi-v1-CheckedScalarDivRemNativeTimeRequest"></a>

### CheckedScalarDivRemNativeTimeRequest
Time scalar divrem checked request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dividend | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | Time to divide |
| divisor | [int64](#int64) |  | Divisor to divide by |






<a name="massa-abi-v1-CheckedScalarDivRemNativeTimeResult"></a>

### CheckedScalarDivRemNativeTimeResult
Time scalar divrem checked result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| quotient | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | Quotient of time and divisor |
| remainder | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | Remainder of time and divisor |






<a name="massa-abi-v1-CheckedSubNativeTimeRequest"></a>

### CheckedSubNativeTimeRequest
Time subtraction checked request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| left | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | First time to subtract from |
| right | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | Second time to subtract |






<a name="massa-abi-v1-CheckedSubNativeTimeResult"></a>

### CheckedSubNativeTimeResult
Time subtraction checked result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| difference | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | Difference of times (left - right) |






<a name="massa-abi-v1-CompareNativeAddressRequest"></a>

### CompareNativeAddressRequest
Compare NativeAddress request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| left | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | First address to compare |
| right | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | Second address to compare |






<a name="massa-abi-v1-CompareNativeAddressResult"></a>

### CompareNativeAddressResult
Compare NativeAddress result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [ComparisonResult](#massa-abi-v1-ComparisonResult) |  | Comparison result |






<a name="massa-abi-v1-CompareNativeAmountRequest"></a>

### CompareNativeAmountRequest
Compare NativeAmount request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| left | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | First amount to compare |
| right | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Second amount to compare |






<a name="massa-abi-v1-CompareNativeAmountResult"></a>

### CompareNativeAmountResult
Compare NativeAmount result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [ComparisonResult](#massa-abi-v1-ComparisonResult) |  | Comparison result |






<a name="massa-abi-v1-CompareNativePubKeyRequest"></a>

### CompareNativePubKeyRequest
Compare NativePubKey request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| left | [massa.model.v1.NativePubKey](#massa-model-v1-NativePubKey) |  | First public key to compare |
| right | [massa.model.v1.NativePubKey](#massa-model-v1-NativePubKey) |  | Second public key to compare |






<a name="massa-abi-v1-CompareNativePubKeyResult"></a>

### CompareNativePubKeyResult
Compare NativePubKey result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [ComparisonResult](#massa-abi-v1-ComparisonResult) |  | Comparison result |






<a name="massa-abi-v1-CompareNativeSigRequest"></a>

### CompareNativeSigRequest
Compare NativeSig request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| left | [massa.model.v1.NativeSig](#massa-model-v1-NativeSig) |  | First signature to compare |
| right | [massa.model.v1.NativeSig](#massa-model-v1-NativeSig) |  | Second signature to compare |






<a name="massa-abi-v1-CompareNativeSigResult"></a>

### CompareNativeSigResult
Compare NativeSig result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [ComparisonResult](#massa-abi-v1-ComparisonResult) |  | Comparison result |






<a name="massa-abi-v1-CompareNativeTimeRequest"></a>

### CompareNativeTimeRequest
Time comparison request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| left | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | First time to compare |
| right | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | Second time to compare |






<a name="massa-abi-v1-CompareNativeTimeResult"></a>

### CompareNativeTimeResult
Time comparison result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [ComparisonResult](#massa-abi-v1-ComparisonResult) |  | Comparison result |






<a name="massa-abi-v1-ComparisonResult"></a>

### ComparisonResult
Comparison result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| left_lower | [ComparisonResult.LeftLower](#massa-abi-v1-ComparisonResult-LeftLower) |  |  |
| equal | [ComparisonResult.Equal](#massa-abi-v1-ComparisonResult-Equal) |  |  |
| left_greater | [ComparisonResult.LeftGreater](#massa-abi-v1-ComparisonResult-LeftGreater) |  |  |






<a name="massa-abi-v1-ComparisonResult-Equal"></a>

### ComparisonResult.Equal
Left is equal to right






<a name="massa-abi-v1-ComparisonResult-LeftGreater"></a>

### ComparisonResult.LeftGreater
Left is greater






<a name="massa-abi-v1-ComparisonResult-LeftLower"></a>

### ComparisonResult.LeftLower
Left is lower






<a name="massa-abi-v1-ConsolePutRequest"></a>

### ConsolePutRequest
AS builtin `Console.log` function
AS builtin `Console.info` function
AS builtin `Console.warn` function
AS builtin `Console.error` function
AS builtin `Console.debug` function
Console put request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message | [string](#string) |  | message |






<a name="massa-abi-v1-ConsolePutResult"></a>

### ConsolePutResult
Console put result






<a name="massa-abi-v1-CreateScRequest"></a>

### CreateScRequest
Create SC request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| bytecode | [bytes](#bytes) |  | Bytecode is the compiled code of the smart contract |






<a name="massa-abi-v1-CreateScResult"></a>

### CreateScResult
Create SC result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sc_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | Address of the just created smart contract |






<a name="massa-abi-v1-DateNowRequest"></a>

### DateNowRequest
AS builtin `Date.now` function
date now request






<a name="massa-abi-v1-DateNowResult"></a>

### DateNowResult
date now result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| date_now | [double](#double) |  | date now |






<a name="massa-abi-v1-DeleteDataForRequest"></a>

### DeleteDataForRequest
Delete data for request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | NativeAddress to delete data for |
| key | [bytes](#bytes) |  | key |






<a name="massa-abi-v1-DeleteDataForResult"></a>

### DeleteDataForResult
Delete data for result






<a name="massa-abi-v1-DeleteDataRequest"></a>

### DeleteDataRequest
Delete data request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [bytes](#bytes) |  | key |






<a name="massa-abi-v1-DeleteDataResult"></a>

### DeleteDataResult
Delete data result






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
| quotient | [int64](#int64) |  | Quotient of amount and divisor |
| remainder | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Remainder of amount and divisor |






<a name="massa-abi-v1-Error"></a>

### Error
Error message used in abi Response


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message | [string](#string) |  | a string representing the error |






<a name="massa-abi-v1-FunctionExistsRequest"></a>

### FunctionExistsRequest
Function exists request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_sc_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | Address of the smart contract to call |
| function_name | [string](#string) |  | The name of the function to check the existance of |






<a name="massa-abi-v1-FunctionExistsResult"></a>

### FunctionExistsResult
Function exists result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| exists | [bool](#bool) |  | Exists is true if the function exists |






<a name="massa-abi-v1-GenerateEventRequest"></a>

### GenerateEventRequest
Generate event request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| event | [string](#string) |  | Event |






<a name="massa-abi-v1-GenerateEventResult"></a>

### GenerateEventResult
Generate event resulst






<a name="massa-abi-v1-GetBalanceForRequest"></a>

### GetBalanceForRequest
Get balance for request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | NativeAddress to get balance for |






<a name="massa-abi-v1-GetBalanceForResult"></a>

### GetBalanceForResult
Get balance result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| balance | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | balance |






<a name="massa-abi-v1-GetBalanceRequest"></a>

### GetBalanceRequest
Get balance request






<a name="massa-abi-v1-GetBalanceResult"></a>

### GetBalanceResult
Get balance result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| balance | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | balance |






<a name="massa-abi-v1-GetBytecodeForRequest"></a>

### GetBytecodeForRequest
Get bytecode for request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | NativeAddress to get bytecode for |






<a name="massa-abi-v1-GetBytecodeForResult"></a>

### GetBytecodeForResult
Get bytecode for result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| bytecode | [bytes](#bytes) |  | Bytecode |






<a name="massa-abi-v1-GetBytecodeRequest"></a>

### GetBytecodeRequest
Get bytecode request






<a name="massa-abi-v1-GetBytecodeResult"></a>

### GetBytecodeResult
Get bytecode result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| bytecode | [bytes](#bytes) |  | Bytecode |






<a name="massa-abi-v1-GetCallCoinsRequest"></a>

### GetCallCoinsRequest
Get call coins request






<a name="massa-abi-v1-GetCallCoinsResult"></a>

### GetCallCoinsResult
Get call coins result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| coins | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | coins |






<a name="massa-abi-v1-GetCallStackRequest"></a>

### GetCallStackRequest
Get call stack request






<a name="massa-abi-v1-GetCallStackResult"></a>

### GetCallStackResult
Get call stack result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| calls | [string](#string) | repeated | call stack |






<a name="massa-abi-v1-GetCurrentPeriodRequest"></a>

### GetCurrentPeriodRequest
Get current period request






<a name="massa-abi-v1-GetCurrentPeriodResult"></a>

### GetCurrentPeriodResult
Get current period result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| period | [int64](#int64) |  | Current period |






<a name="massa-abi-v1-GetCurrentThreadRequest"></a>

### GetCurrentThreadRequest
Get current thread request






<a name="massa-abi-v1-GetCurrentThreadResult"></a>

### GetCurrentThreadResult
Get current thread result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| thread | [int32](#int32) |  | Current thread |






<a name="massa-abi-v1-GetDataForRequest"></a>

### GetDataForRequest
Get data for request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | NativeAddress to get data for |
| key | [bytes](#bytes) |  | key |






<a name="massa-abi-v1-GetDataForResult"></a>

### GetDataForResult
Get data for result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value | [bytes](#bytes) |  | value |






<a name="massa-abi-v1-GetDataRequest"></a>

### GetDataRequest
Get data request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [bytes](#bytes) |  | key |






<a name="massa-abi-v1-GetDataResult"></a>

### GetDataResult
Get data result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value | [bytes](#bytes) |  | value |






<a name="massa-abi-v1-GetKeysForRequest"></a>

### GetKeysForRequest
Get keys for request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | NativeAddress to get keys for |
| prefix | [bytes](#bytes) |  | keys prefix |






<a name="massa-abi-v1-GetKeysForResult"></a>

### GetKeysForResult
Get keys for result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| keys | [bytes](#bytes) | repeated | keys |






<a name="massa-abi-v1-GetKeysRequest"></a>

### GetKeysRequest
Get keys request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| prefix | [bytes](#bytes) |  | keys prefix |






<a name="massa-abi-v1-GetKeysResult"></a>

### GetKeysResult
Get keys result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| keys | [bytes](#bytes) | repeated | keys |






<a name="massa-abi-v1-GetNativeTimeRequest"></a>

### GetNativeTimeRequest
Get native time request






<a name="massa-abi-v1-GetNativeTimeResult"></a>

### GetNativeTimeResult
Get native time result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| time | [massa.model.v1.NativeTime](#massa-model-v1-NativeTime) |  | Native time |






<a name="massa-abi-v1-GetOpDataRequest"></a>

### GetOpDataRequest
Get op data request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [bytes](#bytes) |  | key |






<a name="massa-abi-v1-GetOpDataResult"></a>

### GetOpDataResult
Get op data result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value | [bytes](#bytes) |  | value |






<a name="massa-abi-v1-GetOpKeysRequest"></a>

### GetOpKeysRequest
Get op keys request






<a name="massa-abi-v1-GetOpKeysResult"></a>

### GetOpKeysResult
Get op keys result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| keys | [bytes](#bytes) | repeated | keys |






<a name="massa-abi-v1-GetOwnedAddressesRequest"></a>

### GetOwnedAddressesRequest
Get owned addresses request






<a name="massa-abi-v1-GetOwnedAddressesResult"></a>

### GetOwnedAddressesResult
Get owned addresses result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| addresses | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) | repeated | owned addresses |






<a name="massa-abi-v1-GetRemainingGasRequest"></a>

### GetRemainingGasRequest
Get remaining gas request






<a name="massa-abi-v1-GetRemainingGasResult"></a>

### GetRemainingGasResult
Get remaining gas result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| remaining_gas | [int64](#int64) |  | remaining gas |






<a name="massa-abi-v1-HasDataForRequest"></a>

### HasDataForRequest
Has data for request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | NativeAddress to check data for |
| key | [bytes](#bytes) |  | key |






<a name="massa-abi-v1-HasDataForResult"></a>

### HasDataForResult
Has data for result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| has_data | [bool](#bool) |  | has data |






<a name="massa-abi-v1-HasDataRequest"></a>

### HasDataRequest
Has data request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [bytes](#bytes) |  | key |






<a name="massa-abi-v1-HasDataResult"></a>

### HasDataResult
Has data result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| has_data | [bool](#bool) |  | has data |






<a name="massa-abi-v1-HasOpKeyRequest"></a>

### HasOpKeyRequest
Has op key request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [bytes](#bytes) |  | key |






<a name="massa-abi-v1-HasOpKeyResult"></a>

### HasOpKeyResult
Has op key result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| has_key | [bool](#bool) |  | has key |






<a name="massa-abi-v1-HashSha256Request"></a>

### HashSha256Request
Hash sha256 request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [bytes](#bytes) |  | data |






<a name="massa-abi-v1-HashSha256Result"></a>

### HashSha256Result
Hash sha256 result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| hash | [bytes](#bytes) |  | hash |






<a name="massa-abi-v1-Keccak256Request"></a>

### Keccak256Request
Keccak256 hash request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [bytes](#bytes) |  | Data to hash |






<a name="massa-abi-v1-Keccak256Result"></a>

### Keccak256Result
Keccak256 hash result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| hash | [bytes](#bytes) |  | Hash of data |






<a name="massa-abi-v1-LocalExecutionRequest"></a>

### LocalExecutionRequest
Local execution request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| bytecode | [bytes](#bytes) |  | Bytecode is the compiled code of the smart contract |
| target_function_name | [string](#string) |  | Function to call in the targeted smart contract |
| function_arg | [bytes](#bytes) |  | Argument to the function serialized in a byte array. |






<a name="massa-abi-v1-LocalExecutionResponse"></a>

### LocalExecutionResponse
Local call response


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
| coefficient | [int64](#int64) |  | Coefficient to multiply by |






<a name="massa-abi-v1-MulNativeAmountResult"></a>

### MulNativeAmountResult
Amount multiplication result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| product | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Product of amount and coefficient |






<a name="massa-abi-v1-NativeAddressFromNativePubKeyRequest"></a>

### NativeAddressFromNativePubKeyRequest
Native address form native public key request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pub_key | [massa.model.v1.NativePubKey](#massa-model-v1-NativePubKey) |  | Native public key |






<a name="massa-abi-v1-NativeAddressFromNativePubKeyResult"></a>

### NativeAddressFromNativePubKeyResult
Native address form native public key result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | Native address |






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






<a name="massa-abi-v1-NativeHashRequest"></a>

### NativeHashRequest
Native hash request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [bytes](#bytes) |  | Data to hash |






<a name="massa-abi-v1-NativeHashResult"></a>

### NativeHashResult
Native hash result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| hash | [massa.model.v1.NativeHash](#massa-model-v1-NativeHash) |  | Hash of data |






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






<a name="massa-abi-v1-PrintRequest"></a>

### PrintRequest
Print request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message | [string](#string) |  | message |






<a name="massa-abi-v1-PrintResult"></a>

### PrintResult
Print result






<a name="massa-abi-v1-ProcessExitRequest"></a>

### ProcessExitRequest
AS builtin `process.exit()` function
Process exit request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| code | [int32](#int32) |  | exit code |






<a name="massa-abi-v1-ProcessExitResult"></a>

### ProcessExitResult
Process exit result






<a name="massa-abi-v1-RespResult"></a>

### RespResult
Tips to check for completeness exec:
`rg message | rg &#34;\{&#34; | rg &#34;Result&#34; | wc -l`
the given count should be equal to the number of messages in RespResult &#43; 2
the &#43;2 comes from ResResult itself which is counted above and from ComparisonResult which is not in the same category


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
| checked_add_native_time_result | [CheckedAddNativeTimeResult](#massa-abi-v1-CheckedAddNativeTimeResult) |  |  |
| checked_sub_native_time_result | [CheckedSubNativeTimeResult](#massa-abi-v1-CheckedSubNativeTimeResult) |  |  |
| checked_mul_native_time_result | [CheckedMulNativeTimeResult](#massa-abi-v1-CheckedMulNativeTimeResult) |  |  |
| checked_scalar_div_rem_native_time_result | [CheckedScalarDivRemNativeTimeResult](#massa-abi-v1-CheckedScalarDivRemNativeTimeResult) |  |  |
| checked_div_rem_native_time_result | [CheckedDivRemNativeTimeResult](#massa-abi-v1-CheckedDivRemNativeTimeResult) |  |  |
| compare_native_time_result | [CompareNativeTimeResult](#massa-abi-v1-CompareNativeTimeResult) |  |  |
| compare_native_address_result | [CompareNativeAddressResult](#massa-abi-v1-CompareNativeAddressResult) |  |  |
| compare_native_pub_key_result | [CompareNativePubKeyResult](#massa-abi-v1-CompareNativePubKeyResult) |  |  |
| compare_native_sig_result | [CompareNativeSigResult](#massa-abi-v1-CompareNativeSigResult) |  |  |
| verify_native_sig_result | [VerifyNativeSigResult](#massa-abi-v1-VerifyNativeSigResult) |  |  |
| compare_native_amount_result | [CompareNativeAmountResult](#massa-abi-v1-CompareNativeAmountResult) |  |  |
| keccak256_result | [Keccak256Result](#massa-abi-v1-Keccak256Result) |  |  |
| verify_evm_sig_result | [VerifyEvmSigResult](#massa-abi-v1-VerifyEvmSigResult) |  |  |
| verify_bls_single_sig_result | [VerifyBlsSingleSigResult](#massa-abi-v1-VerifyBlsSingleSigResult) |  |  |
| verify_bls_multi_sig_result | [VerifyBlsMultiSigResult](#massa-abi-v1-VerifyBlsMultiSigResult) |  |  |
| transfer_coins_result | [TransferCoinsResult](#massa-abi-v1-TransferCoinsResult) |  |  |
| generate_event_result | [GenerateEventResult](#massa-abi-v1-GenerateEventResult) |  |  |
| create_sc_result | [CreateScResult](#massa-abi-v1-CreateScResult) |  |  |
| function_exists_result | [FunctionExistsResult](#massa-abi-v1-FunctionExistsResult) |  |  |
| transfer_coins_for_result | [TransferCoinsForResult](#massa-abi-v1-TransferCoinsForResult) |  |  |
| native_hash_result | [NativeHashResult](#massa-abi-v1-NativeHashResult) |  |  |
| get_keys_result | [GetKeysResult](#massa-abi-v1-GetKeysResult) |  |  |
| get_keys_for_result | [GetKeysForResult](#massa-abi-v1-GetKeysForResult) |  |  |
| set_data_result | [SetDataResult](#massa-abi-v1-SetDataResult) |  |  |
| append_data_result | [AppendDataResult](#massa-abi-v1-AppendDataResult) |  |  |
| get_data_result | [GetDataResult](#massa-abi-v1-GetDataResult) |  |  |
| has_data_result | [HasDataResult](#massa-abi-v1-HasDataResult) |  |  |
| delete_data_result | [DeleteDataResult](#massa-abi-v1-DeleteDataResult) |  |  |
| set_data_for_result | [SetDataForResult](#massa-abi-v1-SetDataForResult) |  |  |
| append_data_for_result | [AppendDataForResult](#massa-abi-v1-AppendDataForResult) |  |  |
| get_data_for_result | [GetDataForResult](#massa-abi-v1-GetDataForResult) |  |  |
| delete_data_for_result | [DeleteDataForResult](#massa-abi-v1-DeleteDataForResult) |  |  |
| has_data_for_result | [HasDataForResult](#massa-abi-v1-HasDataForResult) |  |  |
| get_owned_addresses_result | [GetOwnedAddressesResult](#massa-abi-v1-GetOwnedAddressesResult) |  |  |
| get_call_stack_result | [GetCallStackResult](#massa-abi-v1-GetCallStackResult) |  |  |
| native_address_from_native_pub_key_result | [NativeAddressFromNativePubKeyResult](#massa-abi-v1-NativeAddressFromNativePubKeyResult) |  |  |
| unsafe_random_request_result | [UnsafeRandomResult](#massa-abi-v1-UnsafeRandomResult) |  |  |
| get_native_time_result | [GetNativeTimeResult](#massa-abi-v1-GetNativeTimeResult) |  |  |
| get_current_period_result | [GetCurrentPeriodResult](#massa-abi-v1-GetCurrentPeriodResult) |  |  |
| get_current_thread_result | [GetCurrentThreadResult](#massa-abi-v1-GetCurrentThreadResult) |  |  |
| set_bytecode_request_result | [SetBytecodeRequest](#massa-abi-v1-SetBytecodeRequest) |  |  |
| set_bytecode_for_request_result | [SetBytecodeForRequest](#massa-abi-v1-SetBytecodeForRequest) |  |  |
| get_bytecode_result | [GetBytecodeResult](#massa-abi-v1-GetBytecodeResult) |  |  |
| get_bytecode_for_result | [GetBytecodeForResult](#massa-abi-v1-GetBytecodeForResult) |  |  |
| caller_has_write_access_result | [CallerHasWriteAccessResult](#massa-abi-v1-CallerHasWriteAccessResult) |  |  |
| seed_result | [SeedResult](#massa-abi-v1-SeedResult) |  |  |
| date_now_result | [DateNowResult](#massa-abi-v1-DateNowResult) |  |  |
| console_put_result | [ConsolePutResult](#massa-abi-v1-ConsolePutResult) |  |  |
| trace_result | [TraceResult](#massa-abi-v1-TraceResult) |  |  |
| process_exit_result | [ProcessExitResult](#massa-abi-v1-ProcessExitResult) |  |  |
| hash_sha256_result | [HashSha256Result](#massa-abi-v1-HashSha256Result) |  |  |
| get_op_data_result | [GetOpDataResult](#massa-abi-v1-GetOpDataResult) |  |  |
| has_op_key_result | [HasOpKeyResult](#massa-abi-v1-HasOpKeyResult) |  |  |
| get_op_keys_result | [GetOpKeysResult](#massa-abi-v1-GetOpKeysResult) |  |  |
| print_result | [PrintResult](#massa-abi-v1-PrintResult) |  |  |
| get_remaining_gas_result | [GetRemainingGasResult](#massa-abi-v1-GetRemainingGasResult) |  |  |
| get_balance_result | [GetBalanceResult](#massa-abi-v1-GetBalanceResult) |  |  |
| get_balance_for_result | [GetBalanceForResult](#massa-abi-v1-GetBalanceForResult) |  |  |
| get_call_coins_result | [GetCallCoinsResult](#massa-abi-v1-GetCallCoinsResult) |  |  |






<a name="massa-abi-v1-ScalarDivRemNativeAmountRequest"></a>

### ScalarDivRemNativeAmountRequest
Amount division by scalar request
Try to compute quotient = dividend / divisor
Fails if divisor == 0
Fails if underflow


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dividend | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Amount to divide |
| divisor | [int64](#int64) |  | Divisor to divide by |






<a name="massa-abi-v1-ScalarDivRemNativeAmountResult"></a>

### ScalarDivRemNativeAmountResult
Amount division by scalar result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| quotient | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Quotient of amount and divisor |
| remainder | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | Remainder of amount and divisor |






<a name="massa-abi-v1-SeedRequest"></a>

### SeedRequest
AS builtin `seed` function
Seed request






<a name="massa-abi-v1-SeedResult"></a>

### SeedResult
Seed result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| seed | [double](#double) |  | Seed |






<a name="massa-abi-v1-SetBytecodeForRequest"></a>

### SetBytecodeForRequest
Set bytecode for request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | NativeAddress to set bytecode for |
| bytecode | [bytes](#bytes) |  | Bytecode |






<a name="massa-abi-v1-SetBytecodeForResult"></a>

### SetBytecodeForResult
Set bytecode for result






<a name="massa-abi-v1-SetBytecodeRequest"></a>

### SetBytecodeRequest
Set bytecode request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| bytecode | [bytes](#bytes) |  | Bytecode |






<a name="massa-abi-v1-SetBytecodeResult"></a>

### SetBytecodeResult
Set bytecode  result






<a name="massa-abi-v1-SetDataForRequest"></a>

### SetDataForRequest
Set data for request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | NativeAddress to set data for |
| key | [bytes](#bytes) |  | key |
| value | [bytes](#bytes) |  | value |






<a name="massa-abi-v1-SetDataForResult"></a>

### SetDataForResult
Set data for result






<a name="massa-abi-v1-SetDataRequest"></a>

### SetDataRequest
Set data request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [bytes](#bytes) |  | key |
| value | [bytes](#bytes) |  | value |






<a name="massa-abi-v1-SetDataResult"></a>

### SetDataResult
Set data result






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






<a name="massa-abi-v1-TraceRequest"></a>

### TraceRequest
AS builtin `trace` function
trace request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message | [string](#string) |  | message |
| n | [int32](#int32) |  |  |
| a0 | [double](#double) |  |  |
| a1 | [double](#double) |  |  |
| a2 | [double](#double) |  |  |
| a3 | [double](#double) |  |  |
| a4 | [double](#double) |  |  |






<a name="massa-abi-v1-TraceResult"></a>

### TraceResult
trace result






<a name="massa-abi-v1-TransferCoinsForRequest"></a>

### TransferCoinsForRequest
Transfer coins for request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sender_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | The address of the sender |
| target_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | The address of the recipient |
| amount_to_transfer | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | The amount of coins to transfer |






<a name="massa-abi-v1-TransferCoinsForResult"></a>

### TransferCoinsForResult
Transfer coins for result






<a name="massa-abi-v1-TransferCoinsRequest"></a>

### TransferCoinsRequest
Transfer coins request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_address | [massa.model.v1.NativeAddress](#massa-model-v1-NativeAddress) |  | The address of the recipient |
| amount_to_transfer | [massa.model.v1.NativeAmount](#massa-model-v1-NativeAmount) |  | The amount of coins to transfer |






<a name="massa-abi-v1-TransferCoinsResult"></a>

### TransferCoinsResult
Transfer coins result






<a name="massa-abi-v1-UnsafeRandomRequest"></a>

### UnsafeRandomRequest
Unsafe random request






<a name="massa-abi-v1-UnsafeRandomResult"></a>

### UnsafeRandomResult
Unsafe random result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| random | [int64](#int64) |  | Random |






<a name="massa-abi-v1-VerifyBlsMultiSigRequest"></a>

### VerifyBlsMultiSigRequest
BLS signature multiple verification request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sig | [bytes](#bytes) |  | Signature to verify |
| message | [bytes](#bytes) |  | Message to verify |
| pub_keys | [bytes](#bytes) | repeated | Public keys to verify with |






<a name="massa-abi-v1-VerifyBlsMultiSigResult"></a>

### VerifyBlsMultiSigResult
BLS signature multiple verification result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_verified | [bool](#bool) |  | Verification result |






<a name="massa-abi-v1-VerifyBlsSingleSigRequest"></a>

### VerifyBlsSingleSigRequest
BLS signature single verification request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sig | [bytes](#bytes) |  | Signature to verify |
| message | [bytes](#bytes) |  | Message to verify |
| pub_key | [bytes](#bytes) |  | Public key to verify with |






<a name="massa-abi-v1-VerifyBlsSingleSigResult"></a>

### VerifyBlsSingleSigResult
BLS signature single verification result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_verified | [bool](#bool) |  | Verification result |






<a name="massa-abi-v1-VerifyEvmSigRequest"></a>

### VerifyEvmSigRequest
EVM signature verification request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sig | [bytes](#bytes) |  | Signature to verify |
| message | [bytes](#bytes) |  | Message to verify |
| pub_key | [bytes](#bytes) |  | Public key to verify with |






<a name="massa-abi-v1-VerifyEvmSigResult"></a>

### VerifyEvmSigResult
EVM signature verification result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_verified | [bool](#bool) |  | Verification result |






<a name="massa-abi-v1-VerifyNativeSigRequest"></a>

### VerifyNativeSigRequest
Verify NativeSig request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sig | [massa.model.v1.NativeSig](#massa-model-v1-NativeSig) |  | Signature to verify |
| message | [bytes](#bytes) |  | Message to verify |
| pub_key | [massa.model.v1.NativePubKey](#massa-model-v1-NativePubKey) |  | Public key to verify with |






<a name="massa-abi-v1-VerifyNativeSigResult"></a>

### VerifyNativeSigResult
Verify NativeSig result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_verified | [bool](#bool) |  | Verification result |





 

 

 

 



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

