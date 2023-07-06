# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [massa/model/v1/versioning.proto](#massa_model_v1_versioning-proto)
    - [MipComponentEntry](#massa-model-v1-MipComponentEntry)
    - [MipInfo](#massa-model-v1-MipInfo)
    - [MipStatusEntry](#massa-model-v1-MipStatusEntry)
  
    - [ComponentStateId](#massa-model-v1-ComponentStateId)
    - [MipComponent](#massa-model-v1-MipComponent)
  
- [massa/model/v1/operation.proto](#massa_model_v1_operation-proto)
    - [CallSC](#massa-model-v1-CallSC)
    - [ExecuteSC](#massa-model-v1-ExecuteSC)
    - [Operation](#massa-model-v1-Operation)
    - [OperationType](#massa-model-v1-OperationType)
    - [OperationWrapper](#massa-model-v1-OperationWrapper)
    - [RollBuy](#massa-model-v1-RollBuy)
    - [RollSell](#massa-model-v1-RollSell)
    - [SignedOperation](#massa-model-v1-SignedOperation)
    - [Transaction](#massa-model-v1-Transaction)
  
    - [OperationStatus](#massa-model-v1-OperationStatus)
  
- [massa/model/v1/address.proto](#massa_model_v1_address-proto)
    - [AddressCategory](#massa-model-v1-AddressCategory)
  
- [massa/model/v1/execution.proto](#massa_model_v1_execution-proto)
    - [AsyncMessage](#massa-model-v1-AsyncMessage)
    - [AsyncMessageTrigger](#massa-model-v1-AsyncMessageTrigger)
    - [AsyncMessageUpdate](#massa-model-v1-AsyncMessageUpdate)
    - [AsyncPoolChangeEntry](#massa-model-v1-AsyncPoolChangeEntry)
    - [AsyncPoolChangeValue](#massa-model-v1-AsyncPoolChangeValue)
    - [DenunciationBlockHeader](#massa-model-v1-DenunciationBlockHeader)
    - [DenunciationEndorsement](#massa-model-v1-DenunciationEndorsement)
    - [DenunciationIndex](#massa-model-v1-DenunciationIndex)
    - [ExecutedOpsChangeEntry](#massa-model-v1-ExecutedOpsChangeEntry)
    - [ExecutedOpsChangeValue](#massa-model-v1-ExecutedOpsChangeValue)
    - [ExecutionOutput](#massa-model-v1-ExecutionOutput)
    - [FinalizedExecutionOutput](#massa-model-v1-FinalizedExecutionOutput)
    - [LedgerChangeEntry](#massa-model-v1-LedgerChangeEntry)
    - [LedgerChangeValue](#massa-model-v1-LedgerChangeValue)
    - [LedgerEntry](#massa-model-v1-LedgerEntry)
    - [LedgerEntryUpdate](#massa-model-v1-LedgerEntryUpdate)
    - [ScExecutionEvent](#massa-model-v1-ScExecutionEvent)
    - [ScExecutionEventContext](#massa-model-v1-ScExecutionEventContext)
    - [SetOrDeleteDatastoreEntry](#massa-model-v1-SetOrDeleteDatastoreEntry)
    - [SetOrKeepAsyncMessageTrigger](#massa-model-v1-SetOrKeepAsyncMessageTrigger)
    - [SetOrKeepBalance](#massa-model-v1-SetOrKeepBalance)
    - [SetOrKeepBool](#massa-model-v1-SetOrKeepBool)
    - [SetOrKeepBytecode](#massa-model-v1-SetOrKeepBytecode)
    - [SetOrKeepBytes](#massa-model-v1-SetOrKeepBytes)
    - [SetOrKeepFixed64](#massa-model-v1-SetOrKeepFixed64)
    - [SetOrKeepSlot](#massa-model-v1-SetOrKeepSlot)
    - [SetOrKeepString](#massa-model-v1-SetOrKeepString)
    - [SlotExecutionOutput](#massa-model-v1-SlotExecutionOutput)
    - [StateChanges](#massa-model-v1-StateChanges)
  
    - [AsyncPoolChangeType](#massa-model-v1-AsyncPoolChangeType)
    - [ExecutionOutputStatus](#massa-model-v1-ExecutionOutputStatus)
    - [LedgerChangeType](#massa-model-v1-LedgerChangeType)
    - [OperationExecutionStatus](#massa-model-v1-OperationExecutionStatus)
    - [ScExecutionEventStatus](#massa-model-v1-ScExecutionEventStatus)
    - [SetOrDeleteType](#massa-model-v1-SetOrDeleteType)
    - [SetOrKeepType](#massa-model-v1-SetOrKeepType)
  
- [massa/model/v1/slot.proto](#massa_model_v1_slot-proto)
    - [IndexedSlot](#massa-model-v1-IndexedSlot)
    - [Slot](#massa-model-v1-Slot)
  
- [massa/model/v1/time.proto](#massa_model_v1_time-proto)
    - [NativeTime](#massa-model-v1-NativeTime)
  
- [massa/model/v1/draw.proto](#massa_model_v1_draw-proto)
    - [SelectorDraws](#massa-model-v1-SelectorDraws)
  
- [massa/model/v1/endorsement.proto](#massa_model_v1_endorsement-proto)
    - [Endorsement](#massa-model-v1-Endorsement)
    - [SignedEndorsement](#massa-model-v1-SignedEndorsement)
  
- [massa/model/v1/amount.proto](#massa_model_v1_amount-proto)
    - [NativeAmount](#massa-model-v1-NativeAmount)
  
- [massa/model/v1/block.proto](#massa_model_v1_block-proto)
    - [Block](#massa-model-v1-Block)
    - [BlockHeader](#massa-model-v1-BlockHeader)
    - [BlockWrapper](#massa-model-v1-BlockWrapper)
    - [FilledBlock](#massa-model-v1-FilledBlock)
    - [FilledOperationTuple](#massa-model-v1-FilledOperationTuple)
    - [SignedBlock](#massa-model-v1-SignedBlock)
    - [SignedBlockHeader](#massa-model-v1-SignedBlockHeader)
  
    - [BlockStatus](#massa-model-v1-BlockStatus)
  
- [massa/model/v1/commons.proto](#massa_model_v1_commons-proto)
    - [BytesMapFieldEntry](#massa-model-v1-BytesMapFieldEntry)
    - [SecureShare](#massa-model-v1-SecureShare)
  
    - [ComparisonResult](#massa-model-v1-ComparisonResult)
  
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


 

 

 



<a name="massa_model_v1_operation-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/model/v1/operation.proto



<a name="massa-model-v1-CallSC"></a>

### CallSC
Calls an exported function from a stored smart contract


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_addr | [string](#string) |  | Target smart contract address |
| target_func | [string](#string) |  | Target function name. No function is called if empty |
| param | [bytes](#bytes) |  | Parameter to pass to the target function |
| max_gas | [fixed64](#fixed64) |  | The maximum amount of gas that the execution of the contract is allowed to cost |
| coins | [fixed64](#fixed64) |  | Extra coins that are spent from the caller&#39;s balance and transferred to the target |






<a name="massa-model-v1-ExecuteSC"></a>

### ExecuteSC
Execute a smart contract


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [bytes](#bytes) |  | Smart contract bytecode. |
| max_coins | [fixed64](#fixed64) |  | The maximum of coins that could be spent by the operation sender |
| max_gas | [fixed64](#fixed64) |  | The maximum amount of gas that the execution of the contract is allowed to cost |
| datastore | [BytesMapFieldEntry](#massa-model-v1-BytesMapFieldEntry) | repeated | A key-value store associating a hash to arbitrary bytes |






<a name="massa-model-v1-Operation"></a>

### Operation
The operation as sent in the network


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fee | [fixed64](#fixed64) |  | The fee they have decided for this operation |
| expire_period | [fixed64](#fixed64) |  | After `expire_period` slot the operation won&#39;t be included in a block |
| op | [OperationType](#massa-model-v1-OperationType) |  | The type specific operation part |






<a name="massa-model-v1-OperationType"></a>

### OperationType
Type specific operation content


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| transaction | [Transaction](#massa-model-v1-Transaction) |  | Transfer coins from sender to recipient |
| roll_buy | [RollBuy](#massa-model-v1-RollBuy) |  | The sender buys `roll_count` rolls. Roll price is defined in configuration |
| roll_sell | [RollSell](#massa-model-v1-RollSell) |  | The sender sells `roll_count` rolls. Roll price is defined in configuration |
| execut_sc | [ExecuteSC](#massa-model-v1-ExecuteSC) |  | Execute a smart contract |
| call_sc | [CallSC](#massa-model-v1-CallSC) |  | Calls an exported function from a stored smart contract |






<a name="massa-model-v1-OperationWrapper"></a>

### OperationWrapper
A wrapper around an operation with its metadata


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | The unique ID of the operation. |
| block_ids | [string](#string) | repeated | The IDs of the blocks in which the operation appears |
| thread | [fixed32](#fixed32) |  | The thread in which the operation can be included |
| operation | [SignedOperation](#massa-model-v1-SignedOperation) |  | The operation object itself |
| status | [OperationStatus](#massa-model-v1-OperationStatus) | repeated | The execution statuses of the operation |






<a name="massa-model-v1-RollBuy"></a>

### RollBuy
The sender buys `roll_count` rolls. Roll price is defined in configuration


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| roll_count | [fixed64](#fixed64) |  | Roll count |






<a name="massa-model-v1-RollSell"></a>

### RollSell
The sender sells `roll_count` rolls. Roll price is defined in configuration


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| roll_count | [fixed64](#fixed64) |  | Roll count |






<a name="massa-model-v1-SignedOperation"></a>

### SignedOperation
Signed operation


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [Operation](#massa-model-v1-Operation) |  | Operation |
| signature | [string](#string) |  | A cryptographically generated value using `serialized_data` and a public key. |
| content_creator_pub_key | [string](#string) |  | The public-key component used in the generation of the signature |
| content_creator_address | [string](#string) |  | Derived from the same public key used to generate the signature |
| id | [string](#string) |  | A secure hash of the data. See also [massa_hash::Hash] |
| serialized_size | [fixed64](#fixed64) |  | The size of the serialized operation |






<a name="massa-model-v1-Transaction"></a>

### Transaction
Transfer coins from sender to recipient


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| recipient_address | [string](#string) |  | Recipient address |
| amount | [fixed64](#fixed64) |  | Amount |





 


<a name="massa-model-v1-OperationStatus"></a>

### OperationStatus
Possible statuses for an operation

| Name | Number | Description |
| ---- | ------ | ----------- |
| OPERATION_STATUS_UNSPECIFIED | 0 | Default enum value |
| OPERATION_STATUS_PENDING | 1 | The operation is still pending |
| OPERATION_STATUS_FINAL | 2 | The operation is final |
| OPERATION_STATUS_SUCCESS | 3 | The operation was executed successfully |
| OPERATION_STATUS_FAILURE | 4 | The operation failed to execute |
| OPERATION_STATUS_UNKNOWN | 5 | The status of the operation is unknown |


 

 

 



<a name="massa_model_v1_address-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/model/v1/address.proto


 


<a name="massa-model-v1-AddressCategory"></a>

### AddressCategory
Address category discriminant

| Name | Number | Description |
| ---- | ------ | ----------- |
| ADDRESS_CATEGORY_UNSPECIFIED | 0 | Unspecified address category |
| ADDRESS_CATEGORY_USER_ADDRESS | 1 | User address |
| ADDRESS_CATEGORY_SC_ADDRESS | 2 | Smart contract address |


 

 

 



<a name="massa_model_v1_execution-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/model/v1/execution.proto



<a name="massa-model-v1-AsyncMessage"></a>

### AsyncMessage
Asynchronous smart contract message


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| emission_slot | [Slot](#massa-model-v1-Slot) |  | Slot at which the message was emitted |
| emission_index | [fixed64](#fixed64) |  | Index of the emitted message within the `emission_slot`. This is used for disambiguate the emission of multiple messages at the same slot. |
| sender | [string](#string) |  | The address that sent the message |
| destination | [string](#string) |  | The address towards which the message is being sent |
| handler | [string](#string) |  | the handler function name within the destination address&#39; bytecode |
| max_gas | [fixed64](#fixed64) |  | Maximum gas to use when processing the message |
| fee | [fixed64](#fixed64) |  | Fee paid by the sender when the message is processed. |
| coins | [fixed64](#fixed64) |  | Coins sent from the sender to the target address of the message. Those coins are spent by the sender address when the message is sent, and credited to the destination address when receiving the message. In case of failure or discard, those coins are reimbursed to the sender. |
| validity_start | [Slot](#massa-model-v1-Slot) |  | Slot at which the message starts being valid (bound included in the validity range) |
| validity_end | [Slot](#massa-model-v1-Slot) |  | Slot at which the message stops being valid (bound not included in the validity range) |
| data | [bytes](#bytes) |  | Raw payload data of the message |
| trigger | [AsyncMessageTrigger](#massa-model-v1-AsyncMessageTrigger) |  | Trigger that define whenever a message can be executed |
| can_be_executed | [bool](#bool) |  | Boolean that determine if the message can be executed. For messages without filter this boolean is always true. For messages with filter, this boolean is true if the filter has been matched between `validity_start` and current slot. |
| hash | [string](#string) |  | Hash of the message |






<a name="massa-model-v1-AsyncMessageTrigger"></a>

### AsyncMessageTrigger
Structure defining a trigger for an asynchronous message


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Filter on the address |
| datastore_key | [bytes](#bytes) | optional | Filter on the datastore key (optional) |






<a name="massa-model-v1-AsyncMessageUpdate"></a>

### AsyncMessageUpdate
Asynchronous smart contract message


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| emission_slot | [SetOrKeepSlot](#massa-model-v1-SetOrKeepSlot) |  | Change the slot at which the message was emitted |
| emission_index | [SetOrKeepFixed64](#massa-model-v1-SetOrKeepFixed64) |  | Change the index of the emitted message within the `emission_slot`. This is used for disambiguate the emission of multiple messages at the same slot. |
| sender | [SetOrKeepString](#massa-model-v1-SetOrKeepString) |  | Change the address that sent the message |
| destination | [SetOrKeepString](#massa-model-v1-SetOrKeepString) |  | Change the address towards which the message is being sent |
| handler | [SetOrKeepString](#massa-model-v1-SetOrKeepString) |  | Change the handler function name within the destination address&#39; bytecode |
| max_gas | [SetOrKeepFixed64](#massa-model-v1-SetOrKeepFixed64) |  | Change the maximum gas to use when processing the message |
| fee | [SetOrKeepFixed64](#massa-model-v1-SetOrKeepFixed64) |  | Change the fee paid by the sender when the message is processed. |
| coins | [SetOrKeepFixed64](#massa-model-v1-SetOrKeepFixed64) |  | Change the coins sent from the sender to the target address of the message. Those coins are spent by the sender address when the message is sent, and credited to the destination address when receiving the message. In case of failure or discard, those coins are reimbursed to the sender. |
| validity_start | [SetOrKeepSlot](#massa-model-v1-SetOrKeepSlot) |  | Change the slot at which the message starts being valid (bound included in the validity range) |
| validity_end | [SetOrKeepSlot](#massa-model-v1-SetOrKeepSlot) |  | Change the slot at which the message stops being valid (bound not included in the validity range) |
| data | [SetOrKeepBytes](#massa-model-v1-SetOrKeepBytes) |  | Change the raw payload data of the message |
| trigger | [SetOrKeepAsyncMessageTrigger](#massa-model-v1-SetOrKeepAsyncMessageTrigger) |  | Change the trigger that define whenever a message can be executed |
| can_be_executed | [SetOrKeepBool](#massa-model-v1-SetOrKeepBool) |  | Change the boolean that determine if the message can be executed. For messages without filter this boolean is always true. For messages with filter, this boolean is true if the filter has been matched between `validity_start` and current slot. |
| hash | [SetOrKeepString](#massa-model-v1-SetOrKeepString) |  | Change the hash of the message |






<a name="massa-model-v1-AsyncPoolChangeEntry"></a>

### AsyncPoolChangeEntry
AsyncPoolChange Entry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| async_message_id | [string](#string) |  | Async message id |
| value | [AsyncPoolChangeValue](#massa-model-v1-AsyncPoolChangeValue) |  | AsyncPool message |






<a name="massa-model-v1-AsyncPoolChangeValue"></a>

### AsyncPoolChangeValue
AsyncPoolChangeValue


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [AsyncPoolChangeType](#massa-model-v1-AsyncPoolChangeType) |  | The type of the change |
| created_message | [AsyncMessage](#massa-model-v1-AsyncMessage) |  | Created ledger entry |
| updated_message | [AsyncMessageUpdate](#massa-model-v1-AsyncMessageUpdate) |  | Update ledger entry |






<a name="massa-model-v1-DenunciationBlockHeader"></a>

### DenunciationBlockHeader
Variant for Block header denunciation index


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massa-model-v1-Slot) |  | Denounciation slot |






<a name="massa-model-v1-DenunciationEndorsement"></a>

### DenunciationEndorsement
Variant for Endorsement denunciation index


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massa-model-v1-Slot) |  | Denounciation slot |
| index | [fixed32](#fixed32) |  | Denounciation index |






<a name="massa-model-v1-DenunciationIndex"></a>

### DenunciationIndex
Index for Denunciations in collections (e.g. like a HashMap...)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block_header | [DenunciationBlockHeader](#massa-model-v1-DenunciationBlockHeader) |  | Denunciation block header |
| endorsement | [DenunciationEndorsement](#massa-model-v1-DenunciationEndorsement) |  | Denunciation endorsement |






<a name="massa-model-v1-ExecutedOpsChangeEntry"></a>

### ExecutedOpsChangeEntry
ExecutedOpsChangeEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| operation_id | [string](#string) |  | OperationId |
| value | [ExecutedOpsChangeValue](#massa-model-v1-ExecutedOpsChangeValue) |  | ExecutedOpsChangeValue |






<a name="massa-model-v1-ExecutedOpsChangeValue"></a>

### ExecutedOpsChangeValue
ExecutedOpsChangeValue


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [OperationExecutionStatus](#massa-model-v1-OperationExecutionStatus) | repeated | The status of the execution of the operation |
| slot | [Slot](#massa-model-v1-Slot) |  | Slot until which the operation remains valid (included) |






<a name="massa-model-v1-ExecutionOutput"></a>

### ExecutionOutput
ExecutionOutput


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massa-model-v1-Slot) |  | Slot |
| block_id | [string](#string) | optional | Block id at that slot (optional) |
| events | [ScExecutionEvent](#massa-model-v1-ScExecutionEvent) | repeated | Events emitted by the execution step |
| state_changes | [StateChanges](#massa-model-v1-StateChanges) |  | State changes caused by the execution step |






<a name="massa-model-v1-FinalizedExecutionOutput"></a>

### FinalizedExecutionOutput
FinalizedExecutionOutput


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massa-model-v1-Slot) |  | Slot |






<a name="massa-model-v1-LedgerChangeEntry"></a>

### LedgerChangeEntry
LedgerChangeEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Address |
| value | [LedgerChangeValue](#massa-model-v1-LedgerChangeValue) |  | Ledger message |






<a name="massa-model-v1-LedgerChangeValue"></a>

### LedgerChangeValue
LedgerChangeValue


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [LedgerChangeType](#massa-model-v1-LedgerChangeType) |  | The type of the change |
| created_entry | [LedgerEntry](#massa-model-v1-LedgerEntry) |  | Created ledger entry |
| updated_entry | [LedgerEntryUpdate](#massa-model-v1-LedgerEntryUpdate) |  | Update ledger entry |






<a name="massa-model-v1-LedgerEntry"></a>

### LedgerEntry
An entry associated to an address in the `FinalLedger`


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| balance | [fixed64](#fixed64) |  | The balance of that entry |
| bytecode | [bytes](#bytes) |  | Executable bytecode |
| entries | [BytesMapFieldEntry](#massa-model-v1-BytesMapFieldEntry) | repeated | A key-value store associating a hash to arbitrary bytes |






<a name="massa-model-v1-LedgerEntryUpdate"></a>

### LedgerEntryUpdate
Represents an update to one or more fields of a `LedgerEntry`


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| balance | [SetOrKeepBalance](#massa-model-v1-SetOrKeepBalance) |  | Change the balance |
| bytecode | [SetOrKeepBytecode](#massa-model-v1-SetOrKeepBytecode) |  | Change the executable bytecode |
| datastore | [SetOrDeleteDatastoreEntry](#massa-model-v1-SetOrDeleteDatastoreEntry) | repeated | Change datastore entries |






<a name="massa-model-v1-ScExecutionEvent"></a>

### ScExecutionEvent
ScExecutionEvent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| context | [ScExecutionEventContext](#massa-model-v1-ScExecutionEventContext) |  | Sc execution context |
| data | [string](#string) |  | json data string |






<a name="massa-model-v1-ScExecutionEventContext"></a>

### ScExecutionEventContext
ScExecutionEvent context


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | base58 encoded slot(period &#43; thread) &#43; index_in_slot |
| origin_slot | [Slot](#massa-model-v1-Slot) |  | When was it generated |
| block_id | [string](#string) | optional | Block id if there was a block at that slot (optional) |
| index_in_slot | [fixed64](#fixed64) |  | Index of the event in the slot |
| call_stack | [string](#string) | repeated | Call stack addresses. most recent at the end |
| origin_operation_id | [string](#string) | optional | Origin operation id (optional) |
| status | [ScExecutionEventStatus](#massa-model-v1-ScExecutionEventStatus) | repeated | Status |






<a name="massa-model-v1-SetOrDeleteDatastoreEntry"></a>

### SetOrDeleteDatastoreEntry
Set or Delete DatastoreEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [SetOrDeleteType](#massa-model-v1-SetOrDeleteType) |  | The type of the change |
| datastore_entry | [BytesMapFieldEntry](#massa-model-v1-BytesMapFieldEntry) | optional | The balance of that entry (optioal) |






<a name="massa-model-v1-SetOrKeepAsyncMessageTrigger"></a>

### SetOrKeepAsyncMessageTrigger
Set or Keep AsyncMessageTrigger


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [SetOrKeepType](#massa-model-v1-SetOrKeepType) |  | The type of the change |
| value | [AsyncMessageTrigger](#massa-model-v1-AsyncMessageTrigger) | optional | The value of that entry (optional) |






<a name="massa-model-v1-SetOrKeepBalance"></a>

### SetOrKeepBalance
Set or Keep Balance


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [SetOrKeepType](#massa-model-v1-SetOrKeepType) |  | The type of the change |
| balance | [fixed64](#fixed64) | optional | The balance of that entry (optional) |






<a name="massa-model-v1-SetOrKeepBool"></a>

### SetOrKeepBool
Set or Keep Bool


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [SetOrKeepType](#massa-model-v1-SetOrKeepType) |  | The type of the change |
| value | [bool](#bool) | optional | The value of that entry (optional) |






<a name="massa-model-v1-SetOrKeepBytecode"></a>

### SetOrKeepBytecode
Set or Keep Bytecode


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [SetOrKeepType](#massa-model-v1-SetOrKeepType) |  | The type of the change |
| bytecode | [bytes](#bytes) | optional | Executable bytecode (optional) |






<a name="massa-model-v1-SetOrKeepBytes"></a>

### SetOrKeepBytes
Set or Keep Bytes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [SetOrKeepType](#massa-model-v1-SetOrKeepType) |  | The type of the change |
| value | [bytes](#bytes) | optional | The value of that entry (optional) |






<a name="massa-model-v1-SetOrKeepFixed64"></a>

### SetOrKeepFixed64
Set or Keep Fixed64


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [SetOrKeepType](#massa-model-v1-SetOrKeepType) |  | The type of the change |
| value | [fixed64](#fixed64) | optional | The value of that entry (optional) |






<a name="massa-model-v1-SetOrKeepSlot"></a>

### SetOrKeepSlot
Set or Keep Slot


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [SetOrKeepType](#massa-model-v1-SetOrKeepType) |  | The type of the change |
| value | [Slot](#massa-model-v1-Slot) | optional | The value of that entry (optional) |






<a name="massa-model-v1-SetOrKeepString"></a>

### SetOrKeepString
Set or Keep String


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [SetOrKeepType](#massa-model-v1-SetOrKeepType) |  | The type of the change |
| value | [string](#string) | optional | The value of that entry (optional) |






<a name="massa-model-v1-SlotExecutionOutput"></a>

### SlotExecutionOutput
SlotExecutionOutput


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [ExecutionOutputStatus](#massa-model-v1-ExecutionOutputStatus) | repeated | Status |
| execution_output | [ExecutionOutput](#massa-model-v1-ExecutionOutput) |  | Executed slot output |






<a name="massa-model-v1-StateChanges"></a>

### StateChanges
StateChanges


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ledger_changes | [LedgerChangeEntry](#massa-model-v1-LedgerChangeEntry) | repeated | Ledger changes |
| async_pool_changes | [AsyncPoolChangeEntry](#massa-model-v1-AsyncPoolChangeEntry) | repeated | Asynchronous pool changes |
| executed_ops_changes | [ExecutedOpsChangeEntry](#massa-model-v1-ExecutedOpsChangeEntry) | repeated | Executed operations changes |
| executed_denunciations_changes | [DenunciationIndex](#massa-model-v1-DenunciationIndex) | repeated | Executed denunciations changes |





 


<a name="massa-model-v1-AsyncPoolChangeType"></a>

### AsyncPoolChangeType
AsyncPoolChangeType type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| ASYNC_POOL_CHANGE_TYPE_UNSPECIFIED | 0 | Default enum value |
| ASYNC_POOL_CHANGE_TYPE_SET | 1 | Set type |
| ASYNC_POOL_CHANGE_TYPE_UPDATE | 2 | Activate only type |
| ASYNC_POOL_CHANGE_TYPE_DELETE | 3 | Delete only type |



<a name="massa-model-v1-ExecutionOutputStatus"></a>

### ExecutionOutputStatus
ExecutionOutputStatus type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| EXECUTION_OUTPUT_STATUS_UNSPECIFIED | 0 | Default enum value |
| EXECUTION_OUTPUT_STATUS_CANDIDATE | 1 | Candidate status |
| EXECUTION_OUTPUT_STATUS_FINAL | 2 | Final status |



<a name="massa-model-v1-LedgerChangeType"></a>

### LedgerChangeType
LedgerChangeType type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| LEDGER_CHANGE_TYPE_UNSPECIFIED | 0 | Default enum value |
| LEDGER_CHANGE_TYPE_SET | 1 | Set type |
| LEDGER_CHANGE_TYPE_UPDATE | 2 | Update type |
| LEDGER_CHANGE_TYPE_DELETE | 3 | Delete type |



<a name="massa-model-v1-OperationExecutionStatus"></a>

### OperationExecutionStatus
OperationExecutionStatus type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| OPERATION_EXECUTION_STATUS_UNSPECIFIED | 0 | Default enum value |
| OPERATION_EXECUTION_STATUS_SUCCESS | 1 | Success status |
| OPERATION_EXECUTION_STATUS_FAILED | 2 | Failed only status |



<a name="massa-model-v1-ScExecutionEventStatus"></a>

### ScExecutionEventStatus
ScExecutionEventStatus type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| SC_EXECUTION_EVENT_STATUS_UNSPECIFIED | 0 | Default enum value |
| SC_EXECUTION_EVENT_STATUS_FINAL | 1 | Final status |
| SC_EXECUTION_EVENT_STATUS_READ_ONLY | 2 | Read only status |
| SC_EXECUTION_EVENT_STATUS_FAILURE | 3 | Failure status |



<a name="massa-model-v1-SetOrDeleteType"></a>

### SetOrDeleteType
SetOrDeleteType type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| SET_OR_DELETE_TYPE_UNSPECIFIED | 0 | Default enum value |
| SET_OR_DELETE_TYPE_SET | 1 | Sets a new absolute value |
| SET_OR_DELETE_TYPE_DELETE | 2 | Deletes the existing value |



<a name="massa-model-v1-SetOrKeepType"></a>

### SetOrKeepType
SetOrKeepType type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| SET_OR_KEEP_TYPE_UNSPECIFIED | 0 | Default enum value |
| SET_OR_KEEP_TYPE_SET | 1 | Sets a new absolute value |
| SET_OR_KEEP_TYPE_KEEP | 2 | Keeps the existing value |


 

 

 



<a name="massa_model_v1_slot-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/model/v1/slot.proto



<a name="massa-model-v1-IndexedSlot"></a>

### IndexedSlot
When an address is drawn to create an endorsement it is selected for a specific index


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massa-model-v1-Slot) |  | Slot |
| index | [fixed64](#fixed64) |  | Endorsement index in the slot |






<a name="massa-model-v1-Slot"></a>

### Slot
A point in time where a block is expected


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| period | [fixed64](#fixed64) |  | Period |
| thread | [fixed32](#fixed32) |  | Thread |





 

 

 

 



<a name="massa_model_v1_time-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/model/v1/time.proto



<a name="massa-model-v1-NativeTime"></a>

### NativeTime
NativeTime represents a native duration or unix timestamp


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| milliseconds | [fixed64](#fixed64) |  | Milliseconds |





 

 

 

 



<a name="massa_model_v1_draw-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/model/v1/draw.proto



<a name="massa-model-v1-SelectorDraws"></a>

### SelectorDraws
Selector draws


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Address |
| next_block_draws | [Slot](#massa-model-v1-Slot) | repeated | Next block draws |
| next_endorsement_draws | [IndexedSlot](#massa-model-v1-IndexedSlot) | repeated | Next endorsements draws |





 

 

 

 



<a name="massa_model_v1_endorsement-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/model/v1/endorsement.proto



<a name="massa-model-v1-Endorsement"></a>

### Endorsement
An endorsement, as sent in the network


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massa-model-v1-Slot) |  | Slot in which the endorsement can be included |
| index | [fixed32](#fixed32) |  | Endorsement index inside the including block |
| endorsed_block | [string](#string) |  | Hash of endorsed block This is the parent in thread `self.slot.thread` of the block in which the endorsement is included |






<a name="massa-model-v1-SignedEndorsement"></a>

### SignedEndorsement
Signed endorsement


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [Endorsement](#massa-model-v1-Endorsement) |  | Endorsement |
| signature | [string](#string) |  | A cryptographically generated value using `serialized_data` and a public key. |
| content_creator_pub_key | [string](#string) |  | The public-key component used in the generation of the signature |
| content_creator_address | [string](#string) |  | Derived from the same public key used to generate the signature |
| id | [string](#string) |  | A secure hash of the data. See also [massa_hash::Hash] |
| serialized_size | [fixed64](#fixed64) |  | The size of the serialized endorsement |





 

 

 

 



<a name="massa_model_v1_amount-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/model/v1/amount.proto



<a name="massa-model-v1-NativeAmount"></a>

### NativeAmount
NativeAmount is represented as a fraction so precision can be adjusted in
the future. value = mantissa / (10^scale)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mantissa | [uint64](#uint64) |  | Mantissa |
| scale | [uint32](#uint32) |  | Scale |





 

 

 

 



<a name="massa_model_v1_block-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/model/v1/block.proto



<a name="massa-model-v1-Block"></a>

### Block
Block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [SignedBlockHeader](#massa-model-v1-SignedBlockHeader) |  | Signed header |
| operations | [string](#string) | repeated | Operations ids |






<a name="massa-model-v1-BlockHeader"></a>

### BlockHeader
Block header


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massa-model-v1-Slot) |  | Slot |
| parents | [string](#string) | repeated | parents |
| operation_merkle_root | [string](#string) |  | All operations hash |
| endorsements | [SignedEndorsement](#massa-model-v1-SignedEndorsement) | repeated | Signed endorsements |






<a name="massa-model-v1-BlockWrapper"></a>

### BlockWrapper
A wrapper around a block with its metadata


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | The unique ID of the block. |
| block | [Block](#massa-model-v1-Block) |  | The block object itself |
| status | [BlockStatus](#massa-model-v1-BlockStatus) | repeated | The execution statuses of the block |






<a name="massa-model-v1-FilledBlock"></a>

### FilledBlock
Filled block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [SignedBlockHeader](#massa-model-v1-SignedBlockHeader) |  | Signed header |
| operations | [FilledOperationTuple](#massa-model-v1-FilledOperationTuple) | repeated | Operations |






<a name="massa-model-v1-FilledOperationTuple"></a>

### FilledOperationTuple
Filled Operation Tuple


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| operation_id | [string](#string) |  | Operation id |
| operation | [SignedOperation](#massa-model-v1-SignedOperation) |  | Signed operation |






<a name="massa-model-v1-SignedBlock"></a>

### SignedBlock
Signed block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [Block](#massa-model-v1-Block) |  | Block |
| signature | [string](#string) |  | A cryptographically generated value using `serialized_data` and a public key. |
| content_creator_pub_key | [string](#string) |  | The public-key component used in the generation of the signature |
| content_creator_address | [string](#string) |  | Derived from the same public key used to generate the signature |
| id | [string](#string) |  | A secure hash of the data. See also [massa_hash::Hash] |
| serialized_size | [fixed64](#fixed64) |  | The size of the serialized block |






<a name="massa-model-v1-SignedBlockHeader"></a>

### SignedBlockHeader
Signed block header


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [BlockHeader](#massa-model-v1-BlockHeader) |  | BlockHeader |
| signature | [string](#string) |  | A cryptographically generated value using `serialized_data` and a public key. |
| content_creator_pub_key | [string](#string) |  | The public-key component used in the generation of the signature |
| content_creator_address | [string](#string) |  | Derived from the same public key used to generate the signature |
| id | [string](#string) |  | A secure hash of the data. See also [massa_hash::Hash] |
| serialized_size | [fixed64](#fixed64) |  | The size of the serialized block header |





 


<a name="massa-model-v1-BlockStatus"></a>

### BlockStatus
Possible statuses for a block

| Name | Number | Description |
| ---- | ------ | ----------- |
| BLOCK_STATUS_UNSPECIFIED | 0 | Default enum value |
| BLOCK_STATUS_IN_BLOCKCLIQUE | 1 | The block is in the greatest clique (and not final) |
| BLOCK_STATUS_FINAL | 2 | The block is final |
| BLOCK_STATUS_CANDIDATE | 3 | The block is candidate (active any clique but not final) |
| BLOCK_STATUS_DISCARDED | 4 | The block is discarded |


 

 

 



<a name="massa_model_v1_commons-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/model/v1/commons.proto



<a name="massa-model-v1-BytesMapFieldEntry"></a>

### BytesMapFieldEntry
BytesMapFieldEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [bytes](#bytes) |  | bytes key |
| value | [bytes](#bytes) |  | bytes key |






<a name="massa-model-v1-SecureShare"></a>

### SecureShare
Packages a type such that it can be securely sent and received in a trust-free network


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| serialized_data | [bytes](#bytes) |  | Content in sharable, deserializable form. Is used in the secure verification protocols |
| signature | [string](#string) |  | A cryptographically generated value using `serialized_data` and a public key. |
| content_creator_pub_key | [string](#string) |  | The public-key component used in the generation of the signature |
| content_creator_address | [string](#string) |  | Derived from the same public key used to generate the signature |
| id | [string](#string) |  | A secure hash of the data. See also [massa_hash::Hash] |





 


<a name="massa-model-v1-ComparisonResult"></a>

### ComparisonResult
Comparison result

| Name | Number | Description |
| ---- | ------ | ----------- |
| COMPARISON_RESULT_UNSPECIFIED | 0 |  |
| COMPARISON_RESULT_LOWER | 1 | left is lower |
| COMPARISON_RESULT_EQUAL | 2 | left and right are equal |
| COMPARISON_RESULT_GREATER | 3 | left is greater |


 

 

 



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

