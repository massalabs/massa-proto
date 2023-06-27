# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [massa/model/v1/versioning.proto](#massa_model_v1_versioning-proto)
    - [MipComponentEntry](#massa-model-v1-MipComponentEntry)
    - [MipInfo](#massa-model-v1-MipInfo)
    - [MipStatusEntry](#massa-model-v1-MipStatusEntry)
  
    - [ComponentStateId](#massa-model-v1-ComponentStateId)
    - [MipComponent](#massa-model-v1-MipComponent)
  
- [Scalar Value Types](#scalar-value-types)



<a name="massa_model_v1_versioning-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/model/v1/versioning.proto



<a name="massa-model-v1-MipComponentEntry"></a>

### MipComponentEntry
MipComponentEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| kind | [MipComponent](#massa-model-v1-MipComponent) |  | Kind |
| version | [fixed32](#fixed32) |  | Version |






<a name="massa-model-v1-MipInfo"></a>

### MipInfo
MIP info (name &amp; versions &amp; time range for a MIP)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | MIP name or descriptive name |
| version | [fixed32](#fixed32) |  | Network (or global) version (to be included in block header) |
| start | [fixed64](#fixed64) |  | A timestamp at which the version gains its meaning (e.g. announced in block header) |
| timeout | [fixed64](#fixed64) |  | A timestamp at the which the deployment is considered failed |
| activation_delay | [fixed64](#fixed64) |  | Once deployment has been locked, wait for this duration before deployment is considered active |
| components | [MipComponentEntry](#massa-model-v1-MipComponentEntry) | repeated | Components concerned by this versioning (e.g. a new Block version), and the associated component_version |






<a name="massa-model-v1-MipStatusEntry"></a>

### MipStatusEntry
Entry for GetMipStatusResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mip_info | [MipInfo](#massa-model-v1-MipInfo) |  | Mip info |
| state_id | [ComponentStateId](#massa-model-v1-ComponentStateId) |  | State id |





 


<a name="massa-model-v1-ComponentStateId"></a>

### ComponentStateId
State machine for a Versioning component that tracks the deployment state

| Name | Number | Description |
| ---- | ------ | ----------- |
| COMPONENT_STATE_ID_UNSPECIFIED | 0 | Default enum value |
| COMPONENT_STATE_ID_ERROR | 1 | Error state |
| COMPONENT_STATE_ID_DEFINED | 2 | Initial state |
| COMPONENT_STATE_ID_STARTED | 3 | Past start, can only go to LockedIn after the threshold is above a given value |
| COMPONENT_STATE_ID_LOCKEDIN | 4 | Locked but wait for some time before going to active (to let users the time to upgrade) |
| COMPONENT_STATE_ID_ACTIVE | 5 | After LockedIn, deployment is considered successful (after activation delay) |
| COMPONENT_STATE_ID_FAILED | 6 | Past the timeout, if LockedIn is not reach |



<a name="massa-model-v1-MipComponent"></a>

### MipComponent
Versioning component enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| MIP_COMPONENT_UNSPECIFIED | 0 | Default enum value |
| MIP_COMPONENT_ADDRESS | 1 | Address component |
| MIP_COMPONENT_KEYPAIR | 2 | Keypair component |


 

 

 



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

