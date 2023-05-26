# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [massalabs/api/v1/api.proto](#massalabs_api_v1_api-proto)
    - [BlockParent](#massalabs-api-v1-BlockParent)
    - [BlockResult](#massalabs-api-v1-BlockResult)
    - [BlocksContext](#massalabs-api-v1-BlocksContext)
    - [DatastoreEntriesQuery](#massalabs-api-v1-DatastoreEntriesQuery)
    - [DatastoreEntry](#massalabs-api-v1-DatastoreEntry)
    - [DatastoreEntryFilter](#massalabs-api-v1-DatastoreEntryFilter)
    - [EndorsementResult](#massalabs-api-v1-EndorsementResult)
    - [GetBlocksBySlotsRequest](#massalabs-api-v1-GetBlocksBySlotsRequest)
    - [GetBlocksBySlotsResponse](#massalabs-api-v1-GetBlocksBySlotsResponse)
    - [GetBlocksFilter](#massalabs-api-v1-GetBlocksFilter)
    - [GetBlocksQuery](#massalabs-api-v1-GetBlocksQuery)
    - [GetBlocksRequest](#massalabs-api-v1-GetBlocksRequest)
    - [GetBlocksResponse](#massalabs-api-v1-GetBlocksResponse)
    - [GetDatastoreEntriesRequest](#massalabs-api-v1-GetDatastoreEntriesRequest)
    - [GetDatastoreEntriesResponse](#massalabs-api-v1-GetDatastoreEntriesResponse)
    - [GetLargestStakersRequest](#massalabs-api-v1-GetLargestStakersRequest)
    - [GetLargestStakersResponse](#massalabs-api-v1-GetLargestStakersResponse)
    - [GetNextBlockBestParentsRequest](#massalabs-api-v1-GetNextBlockBestParentsRequest)
    - [GetNextBlockBestParentsResponse](#massalabs-api-v1-GetNextBlockBestParentsResponse)
    - [GetOperationsFilter](#massalabs-api-v1-GetOperationsFilter)
    - [GetOperationsQuery](#massalabs-api-v1-GetOperationsQuery)
    - [GetOperationsRequest](#massalabs-api-v1-GetOperationsRequest)
    - [GetOperationsResponse](#massalabs-api-v1-GetOperationsResponse)
    - [GetScExecutionEventsContext](#massalabs-api-v1-GetScExecutionEventsContext)
    - [GetScExecutionEventsFilter](#massalabs-api-v1-GetScExecutionEventsFilter)
    - [GetScExecutionEventsQuery](#massalabs-api-v1-GetScExecutionEventsQuery)
    - [GetScExecutionEventsRequest](#massalabs-api-v1-GetScExecutionEventsRequest)
    - [GetScExecutionEventsResponse](#massalabs-api-v1-GetScExecutionEventsResponse)
    - [GetSelectorDrawsRequest](#massalabs-api-v1-GetSelectorDrawsRequest)
    - [GetSelectorDrawsResponse](#massalabs-api-v1-GetSelectorDrawsResponse)
    - [GetTransactionsThroughputRequest](#massalabs-api-v1-GetTransactionsThroughputRequest)
    - [GetTransactionsThroughputResponse](#massalabs-api-v1-GetTransactionsThroughputResponse)
    - [GetVersionRequest](#massalabs-api-v1-GetVersionRequest)
    - [GetVersionResponse](#massalabs-api-v1-GetVersionResponse)
    - [LargestStakerEntry](#massalabs-api-v1-LargestStakerEntry)
    - [LargestStakersContext](#massalabs-api-v1-LargestStakersContext)
    - [LargestStakersFilter](#massalabs-api-v1-LargestStakersFilter)
    - [LargestStakersQuery](#massalabs-api-v1-LargestStakersQuery)
    - [NewBlocksHeadersRequest](#massalabs-api-v1-NewBlocksHeadersRequest)
    - [NewBlocksHeadersResponse](#massalabs-api-v1-NewBlocksHeadersResponse)
    - [NewBlocksRequest](#massalabs-api-v1-NewBlocksRequest)
    - [NewBlocksResponse](#massalabs-api-v1-NewBlocksResponse)
    - [NewEndorsementsRequest](#massalabs-api-v1-NewEndorsementsRequest)
    - [NewEndorsementsResponse](#massalabs-api-v1-NewEndorsementsResponse)
    - [NewFilledBlocksRequest](#massalabs-api-v1-NewFilledBlocksRequest)
    - [NewFilledBlocksResponse](#massalabs-api-v1-NewFilledBlocksResponse)
    - [NewOperationsFilter](#massalabs-api-v1-NewOperationsFilter)
    - [NewOperationsQuery](#massalabs-api-v1-NewOperationsQuery)
    - [NewOperationsRequest](#massalabs-api-v1-NewOperationsRequest)
    - [NewOperationsResponse](#massalabs-api-v1-NewOperationsResponse)
    - [NewSlotExecutionOutputsFilter](#massalabs-api-v1-NewSlotExecutionOutputsFilter)
    - [NewSlotExecutionOutputsQuery](#massalabs-api-v1-NewSlotExecutionOutputsQuery)
    - [NewSlotExecutionOutputsRequest](#massalabs-api-v1-NewSlotExecutionOutputsRequest)
    - [NewSlotExecutionOutputsResponse](#massalabs-api-v1-NewSlotExecutionOutputsResponse)
    - [OperationResult](#massalabs-api-v1-OperationResult)
    - [OperationsContext](#massalabs-api-v1-OperationsContext)
    - [SelectorDraws](#massalabs-api-v1-SelectorDraws)
    - [SelectorDrawsFilter](#massalabs-api-v1-SelectorDrawsFilter)
    - [SelectorDrawsQuery](#massalabs-api-v1-SelectorDrawsQuery)
    - [SendBlocksRequest](#massalabs-api-v1-SendBlocksRequest)
    - [SendBlocksResponse](#massalabs-api-v1-SendBlocksResponse)
    - [SendEndorsementsRequest](#massalabs-api-v1-SendEndorsementsRequest)
    - [SendEndorsementsResponse](#massalabs-api-v1-SendEndorsementsResponse)
    - [SendOperationsRequest](#massalabs-api-v1-SendOperationsRequest)
    - [SendOperationsResponse](#massalabs-api-v1-SendOperationsResponse)
    - [TransactionsThroughputRequest](#massalabs-api-v1-TransactionsThroughputRequest)
    - [TransactionsThroughputResponse](#massalabs-api-v1-TransactionsThroughputResponse)
  
    - [OpType](#massalabs-api-v1-OpType)
  
    - [MassaService](#massalabs-api-v1-MassaService)
  
- [massalabs/api/v1/block.proto](#massalabs_api_v1_block-proto)
    - [Block](#massalabs-api-v1-Block)
    - [BlockHeader](#massalabs-api-v1-BlockHeader)
    - [BlockWrapper](#massalabs-api-v1-BlockWrapper)
    - [FilledBlock](#massalabs-api-v1-FilledBlock)
    - [FilledOperationTuple](#massalabs-api-v1-FilledOperationTuple)
    - [SignedBlock](#massalabs-api-v1-SignedBlock)
    - [SignedBlockHeader](#massalabs-api-v1-SignedBlockHeader)
  
    - [BlockStatus](#massalabs-api-v1-BlockStatus)
  
- [massalabs/api/v1/common.proto](#massalabs_api_v1_common-proto)
    - [BytesMapFieldEntry](#massalabs-api-v1-BytesMapFieldEntry)
    - [SecureShare](#massalabs-api-v1-SecureShare)
  
- [massalabs/api/v1/endorsement.proto](#massalabs_api_v1_endorsement-proto)
    - [Endorsement](#massalabs-api-v1-Endorsement)
    - [SignedEndorsement](#massalabs-api-v1-SignedEndorsement)
  
- [massalabs/api/v1/execution.proto](#massalabs_api_v1_execution-proto)
    - [AsyncMessage](#massalabs-api-v1-AsyncMessage)
    - [AsyncMessageTrigger](#massalabs-api-v1-AsyncMessageTrigger)
    - [AsyncPoolChangeEntry](#massalabs-api-v1-AsyncPoolChangeEntry)
    - [AsyncPoolChangeValue](#massalabs-api-v1-AsyncPoolChangeValue)
    - [DenunciationBlockHeader](#massalabs-api-v1-DenunciationBlockHeader)
    - [DenunciationEndorsement](#massalabs-api-v1-DenunciationEndorsement)
    - [DenunciationIndex](#massalabs-api-v1-DenunciationIndex)
    - [ExecutedOpsChangeEntry](#massalabs-api-v1-ExecutedOpsChangeEntry)
    - [ExecutedOpsChangeValue](#massalabs-api-v1-ExecutedOpsChangeValue)
    - [ExecutionOutput](#massalabs-api-v1-ExecutionOutput)
    - [FinalizedExecutionOutput](#massalabs-api-v1-FinalizedExecutionOutput)
    - [LedgerChangeEntry](#massalabs-api-v1-LedgerChangeEntry)
    - [LedgerChangeValue](#massalabs-api-v1-LedgerChangeValue)
    - [LedgerEntry](#massalabs-api-v1-LedgerEntry)
    - [LedgerEntryUpdate](#massalabs-api-v1-LedgerEntryUpdate)
    - [ScExecutionEvent](#massalabs-api-v1-ScExecutionEvent)
    - [ScExecutionEventContext](#massalabs-api-v1-ScExecutionEventContext)
    - [SetOrDeleteDatastoreEntry](#massalabs-api-v1-SetOrDeleteDatastoreEntry)
    - [SetOrKeepBalance](#massalabs-api-v1-SetOrKeepBalance)
    - [SetOrKeepBytecode](#massalabs-api-v1-SetOrKeepBytecode)
    - [SlotExecutionOutput](#massalabs-api-v1-SlotExecutionOutput)
    - [StateChanges](#massalabs-api-v1-StateChanges)
  
    - [AsyncPoolChangeType](#massalabs-api-v1-AsyncPoolChangeType)
    - [ExecutionOutputStatus](#massalabs-api-v1-ExecutionOutputStatus)
    - [LedgerChangeType](#massalabs-api-v1-LedgerChangeType)
    - [OperationExecutionStatus](#massalabs-api-v1-OperationExecutionStatus)
    - [ScExecutionEventStatus](#massalabs-api-v1-ScExecutionEventStatus)
    - [SetOrDeleteType](#massalabs-api-v1-SetOrDeleteType)
    - [SetOrKeepType](#massalabs-api-v1-SetOrKeepType)
  
- [massalabs/api/v1/operation.proto](#massalabs_api_v1_operation-proto)
    - [CallSC](#massalabs-api-v1-CallSC)
    - [ExecuteSC](#massalabs-api-v1-ExecuteSC)
    - [Operation](#massalabs-api-v1-Operation)
    - [OperationType](#massalabs-api-v1-OperationType)
    - [OperationWrapper](#massalabs-api-v1-OperationWrapper)
    - [RollBuy](#massalabs-api-v1-RollBuy)
    - [RollSell](#massalabs-api-v1-RollSell)
    - [SignedOperation](#massalabs-api-v1-SignedOperation)
    - [Transaction](#massalabs-api-v1-Transaction)
  
    - [OperationStatus](#massalabs-api-v1-OperationStatus)
  
- [massalabs/api/v1/slot.proto](#massalabs_api_v1_slot-proto)
    - [IndexedSlot](#massalabs-api-v1-IndexedSlot)
    - [Slot](#massalabs-api-v1-Slot)
  
- [Scalar Value Types](#scalar-value-types)



<a name="massalabs_api_v1_api-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massalabs/api/v1/api.proto



<a name="massalabs-api-v1-BlockParent"></a>

### BlockParent
Block parent tuple


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block_id | [string](#string) |  | Block id |
| period | [fixed64](#fixed64) |  | Period |






<a name="massalabs-api-v1-BlockResult"></a>

### BlockResult
Holds Block response


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block_id | [string](#string) |  | Block id |






<a name="massalabs-api-v1-BlocksContext"></a>

### BlocksContext
Blocks context


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massalabs-api-v1-Slot) |  | Slot |






<a name="massalabs-api-v1-DatastoreEntriesQuery"></a>

### DatastoreEntriesQuery
DatastoreEntries Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [DatastoreEntryFilter](#massalabs-api-v1-DatastoreEntryFilter) |  | Filter |






<a name="massalabs-api-v1-DatastoreEntry"></a>

### DatastoreEntry
DatastoreEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| final_value | [bytes](#bytes) |  | final datastore entry value |
| candidate_value | [bytes](#bytes) |  | candidate_value datastore entry value |






<a name="massalabs-api-v1-DatastoreEntryFilter"></a>

### DatastoreEntryFilter



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Associated address of the entry |
| key | [bytes](#bytes) |  | Datastore key |






<a name="massalabs-api-v1-EndorsementResult"></a>

### EndorsementResult
Holds Endorsement response


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endorsements_ids | [string](#string) | repeated | Endorsements ids |






<a name="massalabs-api-v1-GetBlocksBySlotsRequest"></a>

### GetBlocksBySlotsRequest
GetBlocksBySlotsRequest holds request for GetBlocksBySlots


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| slots | [Slot](#massalabs-api-v1-Slot) | repeated | Slots |






<a name="massalabs-api-v1-GetBlocksBySlotsResponse"></a>

### GetBlocksBySlotsResponse
GetBlocksBySlotsResponse holds response from GetBlocksBySlots


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| blocks | [Block](#massalabs-api-v1-Block) | repeated | Blocks |






<a name="massalabs-api-v1-GetBlocksFilter"></a>

### GetBlocksFilter
GetBlocks Filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Block id |






<a name="massalabs-api-v1-GetBlocksQuery"></a>

### GetBlocksQuery
GetBlocks Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [GetBlocksFilter](#massalabs-api-v1-GetBlocksFilter) |  | Filter |






<a name="massalabs-api-v1-GetBlocksRequest"></a>

### GetBlocksRequest
GetBlocksRequest holds request for GetBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| queries | [GetBlocksQuery](#massalabs-api-v1-GetBlocksQuery) | repeated | Queries |






<a name="massalabs-api-v1-GetBlocksResponse"></a>

### GetBlocksResponse
GetBlocksResponse holds response from GetBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| context | [BlocksContext](#massalabs-api-v1-BlocksContext) |  | Context |
| blocks | [BlockWrapper](#massalabs-api-v1-BlockWrapper) | repeated | Blocks wrappers |






<a name="massalabs-api-v1-GetDatastoreEntriesRequest"></a>

### GetDatastoreEntriesRequest
GetDatastoreEntriesRequest holds request from GetDatastoreEntries


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| queries | [DatastoreEntriesQuery](#massalabs-api-v1-DatastoreEntriesQuery) | repeated | Queries |






<a name="massalabs-api-v1-GetDatastoreEntriesResponse"></a>

### GetDatastoreEntriesResponse
GetDatastoreEntriesResponse holds response from GetDatastoreEntries


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| entries | [DatastoreEntry](#massalabs-api-v1-DatastoreEntry) | repeated | Datastore entries |






<a name="massalabs-api-v1-GetLargestStakersRequest"></a>

### GetLargestStakersRequest
GetLargestStakersRequest holds request from GetLargestStakers


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| query | [LargestStakersQuery](#massalabs-api-v1-LargestStakersQuery) |  | Query |






<a name="massalabs-api-v1-GetLargestStakersResponse"></a>

### GetLargestStakersResponse
GetLargestStakersResponse holds response from GetLargestStakers


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| context | [LargestStakersContext](#massalabs-api-v1-LargestStakersContext) |  | Context |
| stakers | [LargestStakerEntry](#massalabs-api-v1-LargestStakerEntry) | repeated | Largest stakers |






<a name="massalabs-api-v1-GetNextBlockBestParentsRequest"></a>

### GetNextBlockBestParentsRequest
GetNextBlockBestParentsRequest holds request for GetNextBlockBestParents


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |






<a name="massalabs-api-v1-GetNextBlockBestParentsResponse"></a>

### GetNextBlockBestParentsResponse
GetNextBlockBestParentsResponse holds response from GetNextBlockBestParents


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| parents | [BlockParent](#massalabs-api-v1-BlockParent) | repeated | Best parents |






<a name="massalabs-api-v1-GetOperationsFilter"></a>

### GetOperationsFilter
GetOperations Filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Operation id |






<a name="massalabs-api-v1-GetOperationsQuery"></a>

### GetOperationsQuery
GetOperations Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [GetOperationsFilter](#massalabs-api-v1-GetOperationsFilter) |  | Filter |






<a name="massalabs-api-v1-GetOperationsRequest"></a>

### GetOperationsRequest
GetOperationsRequest holds request for GetOperations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| queries | [GetOperationsQuery](#massalabs-api-v1-GetOperationsQuery) | repeated | Queries |






<a name="massalabs-api-v1-GetOperationsResponse"></a>

### GetOperationsResponse
GetOperationsResponse holds response from GetOperations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| context | [OperationsContext](#massalabs-api-v1-OperationsContext) |  | Context |
| operations | [OperationWrapper](#massalabs-api-v1-OperationWrapper) | repeated | Operations wrappers |






<a name="massalabs-api-v1-GetScExecutionEventsContext"></a>

### GetScExecutionEventsContext
ScExecutionEvents context


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massalabs-api-v1-Slot) |  | Slot |






<a name="massalabs-api-v1-GetScExecutionEventsFilter"></a>

### GetScExecutionEventsFilter
GetScExecutionEvents Filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| start_slot | [Slot](#massalabs-api-v1-Slot) | optional | Start slot |
| end_slot | [Slot](#massalabs-api-v1-Slot) | optional | End slot |
| caller_address | [string](#string) | optional | Caller address |
| emitter_address | [string](#string) | optional | Emitter address |
| original_operation_id | [string](#string) | optional | Original operation id |
| status | [ScExecutionEventStatus](#massalabs-api-v1-ScExecutionEventStatus) | repeated | Status |






<a name="massalabs-api-v1-GetScExecutionEventsQuery"></a>

### GetScExecutionEventsQuery
GetScExecutionEvents Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [GetScExecutionEventsFilter](#massalabs-api-v1-GetScExecutionEventsFilter) |  | Filter |






<a name="massalabs-api-v1-GetScExecutionEventsRequest"></a>

### GetScExecutionEventsRequest
GetScExecutionEventsRequest holds request for GetScExecutionEvents


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| query | [GetScExecutionEventsQuery](#massalabs-api-v1-GetScExecutionEventsQuery) |  | Query |






<a name="massalabs-api-v1-GetScExecutionEventsResponse"></a>

### GetScExecutionEventsResponse
GetScExecutionEventsResponse holds response from GetScExecutionEvents


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| context | [GetScExecutionEventsContext](#massalabs-api-v1-GetScExecutionEventsContext) |  | Context |
| events | [ScExecutionEvent](#massalabs-api-v1-ScExecutionEvent) | repeated | ScExecutionEvents |






<a name="massalabs-api-v1-GetSelectorDrawsRequest"></a>

### GetSelectorDrawsRequest
GetSelectorDrawsRequest holds request from GetSelectorDraws


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| queries | [SelectorDrawsQuery](#massalabs-api-v1-SelectorDrawsQuery) | repeated | Queries |






<a name="massalabs-api-v1-GetSelectorDrawsResponse"></a>

### GetSelectorDrawsResponse
GetSelectorDrawsResponse holds response from GetSelectorDraws


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| selector_draws | [SelectorDraws](#massalabs-api-v1-SelectorDraws) | repeated | Selector draws |






<a name="massalabs-api-v1-GetTransactionsThroughputRequest"></a>

### GetTransactionsThroughputRequest
GetTransactionsThroughputRequest holds request for GetTransactionsThroughput


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |






<a name="massalabs-api-v1-GetTransactionsThroughputResponse"></a>

### GetTransactionsThroughputResponse
GetTransactionsThroughputResponse holds response from GetTransactionsThroughput


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| throughput | [fixed32](#fixed32) |  | Transactions throughput |






<a name="massalabs-api-v1-GetVersionRequest"></a>

### GetVersionRequest
GetVersionRequest holds request from GetVersion


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |






<a name="massalabs-api-v1-GetVersionResponse"></a>

### GetVersionResponse
GetVersionResponse holds response from GetVersion


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| version | [string](#string) |  | Version |






<a name="massalabs-api-v1-LargestStakerEntry"></a>

### LargestStakerEntry
LargestStakerEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Address |
| rolls | [fixed64](#fixed64) |  | Rolls |






<a name="massalabs-api-v1-LargestStakersContext"></a>

### LargestStakersContext
LargestStakers context


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massalabs-api-v1-Slot) |  | Slot |






<a name="massalabs-api-v1-LargestStakersFilter"></a>

### LargestStakersFilter
LargestStakers Filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| min_rolls | [fixed64](#fixed64) | optional | Minimum rolls (Optional) |
| max_rolls | [fixed64](#fixed64) | optional | Maximum rolls (Optional) |






<a name="massalabs-api-v1-LargestStakersQuery"></a>

### LargestStakersQuery
LargestStakers Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| offset | [fixed64](#fixed64) |  | Starting offset for the list of stakers. Defaults to 1 |
| limit | [fixed64](#fixed64) |  | Limits the number of stakers to return. Defaults to 50 |
| filter | [LargestStakersFilter](#massalabs-api-v1-LargestStakersFilter) |  | Filter |






<a name="massalabs-api-v1-NewBlocksHeadersRequest"></a>

### NewBlocksHeadersRequest
NewBlocksHeadersRequest holds request for NewBlocksHeaders


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |






<a name="massalabs-api-v1-NewBlocksHeadersResponse"></a>

### NewBlocksHeadersResponse
NewBlocksHeadersResponse holds response from NewBlocksHeaders


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| block_header | [SignedBlockHeader](#massalabs-api-v1-SignedBlockHeader) |  | Signed block header |






<a name="massalabs-api-v1-NewBlocksRequest"></a>

### NewBlocksRequest
NewBlocksRequest holds request for NewBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |






<a name="massalabs-api-v1-NewBlocksResponse"></a>

### NewBlocksResponse
NewBlocksResponse holds response from NewBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| block | [SignedBlock](#massalabs-api-v1-SignedBlock) |  | Signed block |






<a name="massalabs-api-v1-NewEndorsementsRequest"></a>

### NewEndorsementsRequest
NewEndorsementsRequest holds request for NewEndorsements


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |






<a name="massalabs-api-v1-NewEndorsementsResponse"></a>

### NewEndorsementsResponse
NewEndorsementsResponse holds response from NewEndorsements


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| endorsement | [SignedEndorsement](#massalabs-api-v1-SignedEndorsement) |  | Signed endorsement |






<a name="massalabs-api-v1-NewFilledBlocksRequest"></a>

### NewFilledBlocksRequest
NewFilledBlocksRequest holds request for NewFilledBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |






<a name="massalabs-api-v1-NewFilledBlocksResponse"></a>

### NewFilledBlocksResponse
NewFilledBlocksResponse holds response from NewFilledBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| filled_block | [FilledBlock](#massalabs-api-v1-FilledBlock) |  | Block with operations content |






<a name="massalabs-api-v1-NewOperationsFilter"></a>

### NewOperationsFilter
NewOperations Filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| types | [OpType](#massalabs-api-v1-OpType) | repeated | Operation type enum |






<a name="massalabs-api-v1-NewOperationsQuery"></a>

### NewOperationsQuery
NewOperations Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [NewOperationsFilter](#massalabs-api-v1-NewOperationsFilter) |  | Filter |






<a name="massalabs-api-v1-NewOperationsRequest"></a>

### NewOperationsRequest
NewOperationsRequest holds request for NewOperations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| query | [NewOperationsQuery](#massalabs-api-v1-NewOperationsQuery) |  | Query |






<a name="massalabs-api-v1-NewOperationsResponse"></a>

### NewOperationsResponse
NewOperationsResponse holds response from NewOperations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| operation | [SignedOperation](#massalabs-api-v1-SignedOperation) |  | Signed operation |






<a name="massalabs-api-v1-NewSlotExecutionOutputsFilter"></a>

### NewSlotExecutionOutputsFilter
NewSlotExecutionOutputs Filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [ExecutionOutputStatus](#massalabs-api-v1-ExecutionOutputStatus) | repeated | Execution output status enum |






<a name="massalabs-api-v1-NewSlotExecutionOutputsQuery"></a>

### NewSlotExecutionOutputsQuery
NewSlotExecutionOutputs Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [NewSlotExecutionOutputsFilter](#massalabs-api-v1-NewSlotExecutionOutputsFilter) |  | Filter |






<a name="massalabs-api-v1-NewSlotExecutionOutputsRequest"></a>

### NewSlotExecutionOutputsRequest
NewSlotExecutionOutputsRequest holds request for NewSlotExecutionOutputs


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| query | [NewSlotExecutionOutputsQuery](#massalabs-api-v1-NewSlotExecutionOutputsQuery) |  | Query |






<a name="massalabs-api-v1-NewSlotExecutionOutputsResponse"></a>

### NewSlotExecutionOutputsResponse
NewSlotExecutionOutputsResponse holds response from NewSlotExecutionOutputs


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| output | [SlotExecutionOutput](#massalabs-api-v1-SlotExecutionOutput) |  | Slot execution output |






<a name="massalabs-api-v1-OperationResult"></a>

### OperationResult
Holds Operation response


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| operations_ids | [string](#string) | repeated | Operations ids |






<a name="massalabs-api-v1-OperationsContext"></a>

### OperationsContext
Operations context


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massalabs-api-v1-Slot) |  | Slot |






<a name="massalabs-api-v1-SelectorDraws"></a>

### SelectorDraws
Selector draws


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Address |
| next_block_draws | [Slot](#massalabs-api-v1-Slot) | repeated | Next block draws |
| next_endorsement_draws | [IndexedSlot](#massalabs-api-v1-IndexedSlot) | repeated | Next endorsements draws |






<a name="massalabs-api-v1-SelectorDrawsFilter"></a>

### SelectorDrawsFilter
SelectorDraws Filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Address |






<a name="massalabs-api-v1-SelectorDrawsQuery"></a>

### SelectorDrawsQuery
SelectorDraws Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [SelectorDrawsFilter](#massalabs-api-v1-SelectorDrawsFilter) |  | Filter |






<a name="massalabs-api-v1-SendBlocksRequest"></a>

### SendBlocksRequest
SendBlocksRequest holds parameters to SendBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| block | [SecureShare](#massalabs-api-v1-SecureShare) |  | Secure shared block |






<a name="massalabs-api-v1-SendBlocksResponse"></a>

### SendBlocksResponse
SendBlocksResponse holds response from SendBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| result | [BlockResult](#massalabs-api-v1-BlockResult) |  | Block result |
| error | [google.rpc.Status](#google-rpc-Status) |  | gRPC error(status) |






<a name="massalabs-api-v1-SendEndorsementsRequest"></a>

### SendEndorsementsRequest
SendEndorsementsRequest holds parameters to SendEndorsements


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| endorsements | [SecureShare](#massalabs-api-v1-SecureShare) | repeated | Secure shared endorsements |






<a name="massalabs-api-v1-SendEndorsementsResponse"></a>

### SendEndorsementsResponse
SendEndorsementsResponse holds response from SendEndorsements


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| result | [EndorsementResult](#massalabs-api-v1-EndorsementResult) |  | Endorsement result |
| error | [google.rpc.Status](#google-rpc-Status) |  | gRPC error(status) |






<a name="massalabs-api-v1-SendOperationsRequest"></a>

### SendOperationsRequest
SendOperationsRequest holds parameters to SendOperations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| operations | [SecureShare](#massalabs-api-v1-SecureShare) | repeated | Secured shared operations |






<a name="massalabs-api-v1-SendOperationsResponse"></a>

### SendOperationsResponse
SendOperationsResponse holds response from SendOperations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| result | [OperationResult](#massalabs-api-v1-OperationResult) |  | Operation result |
| error | [google.rpc.Status](#google-rpc-Status) |  | gRPC error(status) |






<a name="massalabs-api-v1-TransactionsThroughputRequest"></a>

### TransactionsThroughputRequest
TransactionsThroughputRequest holds request for TransactionsThroughput


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| interval | [fixed64](#fixed64) | optional | Timer interval in seconds (Optional). Defaults to 10s |






<a name="massalabs-api-v1-TransactionsThroughputResponse"></a>

### TransactionsThroughputResponse
TransactionsThroughputResponse holds response from TransactionsThroughput


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| throughput | [fixed32](#fixed32) |  | Transactions throughput |





 


<a name="massalabs-api-v1-OpType"></a>

### OpType
Operation type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| OP_TYPE_UNSPECIFIED | 0 | Default enum value |
| OP_TYPE_TRANSACTION | 1 | Transaction |
| OP_TYPE_ROLL_BUY | 2 | Roll buy |
| OP_TYPE_ROLL_SELL | 3 | Roll sell |
| OP_TYPE_EXECUTE_SC | 4 | Execute smart contract |
| OP_TYPE_CALL_SC | 5 | Call smart contract |


 

 


<a name="massalabs-api-v1-MassaService"></a>

### MassaService
Massa gRPC service

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetBlocks | [GetBlocksRequest](#massalabs-api-v1-GetBlocksRequest) | [GetBlocksResponse](#massalabs-api-v1-GetBlocksResponse) | Get blocks by ids |
| GetBlocksBySlots | [GetBlocksBySlotsRequest](#massalabs-api-v1-GetBlocksBySlotsRequest) | [GetBlocksBySlotsResponse](#massalabs-api-v1-GetBlocksBySlotsResponse) | Get blocks by slots |
| GetDatastoreEntries | [GetDatastoreEntriesRequest](#massalabs-api-v1-GetDatastoreEntriesRequest) | [GetDatastoreEntriesResponse](#massalabs-api-v1-GetDatastoreEntriesResponse) | Get datastore entries |
| GetLargestStakers | [GetLargestStakersRequest](#massalabs-api-v1-GetLargestStakersRequest) | [GetLargestStakersResponse](#massalabs-api-v1-GetLargestStakersResponse) | Get largest stakers |
| GetNextBlockBestParents | [GetNextBlockBestParentsRequest](#massalabs-api-v1-GetNextBlockBestParentsRequest) | [GetNextBlockBestParentsResponse](#massalabs-api-v1-GetNextBlockBestParentsResponse) | Get next block best parents |
| GetOperations | [GetOperationsRequest](#massalabs-api-v1-GetOperationsRequest) | [GetOperationsResponse](#massalabs-api-v1-GetOperationsResponse) | Get operations |
| GetScExecutionEvents | [GetScExecutionEventsRequest](#massalabs-api-v1-GetScExecutionEventsRequest) | [GetScExecutionEventsResponse](#massalabs-api-v1-GetScExecutionEventsResponse) | Get smart contracts execution events |
| GetSelectorDraws | [GetSelectorDrawsRequest](#massalabs-api-v1-GetSelectorDrawsRequest) | [GetSelectorDrawsResponse](#massalabs-api-v1-GetSelectorDrawsResponse) | Get selector draws |
| GetTransactionsThroughput | [GetTransactionsThroughputRequest](#massalabs-api-v1-GetTransactionsThroughputRequest) | [GetTransactionsThroughputResponse](#massalabs-api-v1-GetTransactionsThroughputResponse) | Get transactions throughput |
| GetVersion | [GetVersionRequest](#massalabs-api-v1-GetVersionRequest) | [GetVersionResponse](#massalabs-api-v1-GetVersionResponse) | Get node version |
| NewBlocks | [NewBlocksRequest](#massalabs-api-v1-NewBlocksRequest) stream | [NewBlocksResponse](#massalabs-api-v1-NewBlocksResponse) stream | New received and produced blocks |
| NewBlocksHeaders | [NewBlocksHeadersRequest](#massalabs-api-v1-NewBlocksHeadersRequest) stream | [NewBlocksHeadersResponse](#massalabs-api-v1-NewBlocksHeadersResponse) stream | New received and produced blocks headers |
| NewEndorsements | [NewEndorsementsRequest](#massalabs-api-v1-NewEndorsementsRequest) stream | [NewEndorsementsResponse](#massalabs-api-v1-NewEndorsementsResponse) stream | New received and produced endorsements |
| NewFilledBlocks | [NewFilledBlocksRequest](#massalabs-api-v1-NewFilledBlocksRequest) stream | [NewFilledBlocksResponse](#massalabs-api-v1-NewFilledBlocksResponse) stream | New received and produced blocks with operations |
| NewOperations | [NewOperationsRequest](#massalabs-api-v1-NewOperationsRequest) stream | [NewOperationsResponse](#massalabs-api-v1-NewOperationsResponse) stream | New received and produced operations |
| NewSlotExecutionOutputs | [NewSlotExecutionOutputsRequest](#massalabs-api-v1-NewSlotExecutionOutputsRequest) stream | [NewSlotExecutionOutputsResponse](#massalabs-api-v1-NewSlotExecutionOutputsResponse) stream | New received and slot execution events |
| SendBlocks | [SendBlocksRequest](#massalabs-api-v1-SendBlocksRequest) stream | [SendBlocksResponse](#massalabs-api-v1-SendBlocksResponse) stream | Send blocks |
| SendEndorsements | [SendEndorsementsRequest](#massalabs-api-v1-SendEndorsementsRequest) stream | [SendEndorsementsResponse](#massalabs-api-v1-SendEndorsementsResponse) stream | Send endorsements |
| SendOperations | [SendOperationsRequest](#massalabs-api-v1-SendOperationsRequest) stream | [SendOperationsResponse](#massalabs-api-v1-SendOperationsResponse) stream | Send operations |
| TransactionsThroughput | [TransactionsThroughputRequest](#massalabs-api-v1-TransactionsThroughputRequest) stream | [TransactionsThroughputResponse](#massalabs-api-v1-TransactionsThroughputResponse) stream | Transactions throughput |

 



<a name="massalabs_api_v1_block-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massalabs/api/v1/block.proto



<a name="massalabs-api-v1-Block"></a>

### Block
Block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [SignedBlockHeader](#massalabs-api-v1-SignedBlockHeader) |  | Signed header |
| operations | [string](#string) | repeated | Operations ids |






<a name="massalabs-api-v1-BlockHeader"></a>

### BlockHeader
Block header


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massalabs-api-v1-Slot) |  | Slot |
| parents | [string](#string) | repeated | parents |
| operation_merkle_root | [string](#string) |  | All operations hash |
| endorsements | [SignedEndorsement](#massalabs-api-v1-SignedEndorsement) | repeated | Signed endorsements |






<a name="massalabs-api-v1-BlockWrapper"></a>

### BlockWrapper
A wrapper around a block with its metadata


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | The unique ID of the block. |
| block | [Block](#massalabs-api-v1-Block) |  | The block object itself |
| status | [BlockStatus](#massalabs-api-v1-BlockStatus) | repeated | The execution statuses of the block |






<a name="massalabs-api-v1-FilledBlock"></a>

### FilledBlock
Filled block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [SignedBlockHeader](#massalabs-api-v1-SignedBlockHeader) |  | Signed header |
| operations | [FilledOperationTuple](#massalabs-api-v1-FilledOperationTuple) | repeated | Operations |






<a name="massalabs-api-v1-FilledOperationTuple"></a>

### FilledOperationTuple
Filled Operation Tuple


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| operation_id | [string](#string) |  | Operation id |
| operation | [SignedOperation](#massalabs-api-v1-SignedOperation) |  | Signed operation |






<a name="massalabs-api-v1-SignedBlock"></a>

### SignedBlock
Signed block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [Block](#massalabs-api-v1-Block) |  | Block |
| signature | [string](#string) |  | A cryptographically generated value using `serialized_data` and a public key. |
| content_creator_pub_key | [string](#string) |  | The public-key component used in the generation of the signature |
| content_creator_address | [string](#string) |  | Derived from the same public key used to generate the signature |
| id | [string](#string) |  | A secure hash of the data. See also [massa_hash::Hash] |






<a name="massalabs-api-v1-SignedBlockHeader"></a>

### SignedBlockHeader
Signed block header


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [BlockHeader](#massalabs-api-v1-BlockHeader) |  | BlockHeader |
| signature | [string](#string) |  | A cryptographically generated value using `serialized_data` and a public key. |
| content_creator_pub_key | [string](#string) |  | The public-key component used in the generation of the signature |
| content_creator_address | [string](#string) |  | Derived from the same public key used to generate the signature |
| id | [string](#string) |  | A secure hash of the data. See also [massa_hash::Hash] |





 


<a name="massalabs-api-v1-BlockStatus"></a>

### BlockStatus
Possible statuses for a block

| Name | Number | Description |
| ---- | ------ | ----------- |
| BLOCK_STATUS_UNSPECIFIED | 0 | Default enum value |
| BLOCK_STATUS_IN_BLOCKCLIQUE | 1 | The block is in the greatest clique (and not final) |
| BLOCK_STATUS_FINAL | 2 | The block is final |
| BLOCK_STATUS_CANDIDATE | 3 | The block is candidate (active any clique but not final) |
| BLOCK_STATUS_DISCARDED | 4 | The block is discarded |


 

 

 



<a name="massalabs_api_v1_common-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massalabs/api/v1/common.proto



<a name="massalabs-api-v1-BytesMapFieldEntry"></a>

### BytesMapFieldEntry
BytesMapFieldEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [bytes](#bytes) |  | bytes key |
| value | [bytes](#bytes) |  | bytes key |






<a name="massalabs-api-v1-SecureShare"></a>

### SecureShare
Packages a type such that it can be securely sent and received in a trust-free network


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| serialized_data | [bytes](#bytes) |  | Content in sharable, deserializable form. Is used in the secure verification protocols |
| signature | [string](#string) |  | A cryptographically generated value using `serialized_data` and a public key. |
| content_creator_pub_key | [string](#string) |  | The public-key component used in the generation of the signature |
| content_creator_address | [string](#string) |  | Derived from the same public key used to generate the signature |
| id | [string](#string) |  | A secure hash of the data. See also [massa_hash::Hash] |





 

 

 

 



<a name="massalabs_api_v1_endorsement-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massalabs/api/v1/endorsement.proto



<a name="massalabs-api-v1-Endorsement"></a>

### Endorsement
An endorsement, as sent in the network


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massalabs-api-v1-Slot) |  | Slot in which the endorsement can be included |
| index | [fixed32](#fixed32) |  | Endorsement index inside the including block |
| endorsed_block | [string](#string) |  | Hash of endorsed block This is the parent in thread `self.slot.thread` of the block in which the endorsement is included |






<a name="massalabs-api-v1-SignedEndorsement"></a>

### SignedEndorsement
Signed endorsement


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [Endorsement](#massalabs-api-v1-Endorsement) |  | Endorsement |
| signature | [string](#string) |  | A cryptographically generated value using `serialized_data` and a public key. |
| content_creator_pub_key | [string](#string) |  | The public-key component used in the generation of the signature |
| content_creator_address | [string](#string) |  | Derived from the same public key used to generate the signature |
| id | [string](#string) |  | A secure hash of the data. See also [massa_hash::Hash] |





 

 

 

 



<a name="massalabs_api_v1_execution-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massalabs/api/v1/execution.proto



<a name="massalabs-api-v1-AsyncMessage"></a>

### AsyncMessage
Asynchronous smart contract message


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| emission_slot | [Slot](#massalabs-api-v1-Slot) |  | Slot at which the message was emitted |
| emission_index | [fixed64](#fixed64) |  | Index of the emitted message within the `emission_slot`. This is used for disambiguate the emission of multiple messages at the same slot. |
| sender | [string](#string) |  | The address that sent the message |
| destination | [string](#string) |  | The address towards which the message is being sent |
| handler | [string](#string) |  | the handler function name within the destination address&#39; bytecode |
| max_gas | [fixed64](#fixed64) |  | Maximum gas to use when processing the message |
| fee | [fixed64](#fixed64) |  | Fee paid by the sender when the message is processed. |
| coins | [fixed64](#fixed64) |  | Coins sent from the sender to the target address of the message. Those coins are spent by the sender address when the message is sent, and credited to the destination address when receiving the message. In case of failure or discard, those coins are reimbursed to the sender. |
| validity_start | [Slot](#massalabs-api-v1-Slot) |  | Slot at which the message starts being valid (bound included in the validity range) |
| validity_end | [Slot](#massalabs-api-v1-Slot) |  | Slot at which the message stops being valid (bound not included in the validity range) |
| data | [bytes](#bytes) |  | Raw payload data of the message |
| trigger | [AsyncMessageTrigger](#massalabs-api-v1-AsyncMessageTrigger) |  | Trigger that define whenever a message can be executed |
| can_be_executed | [bool](#bool) |  | Boolean that determine if the message can be executed. For messages without filter this boolean is always true. For messages with filter, this boolean is true if the filter has been matched between `validity_start` and current slot. |
| hash | [string](#string) |  | Hash of the message |






<a name="massalabs-api-v1-AsyncMessageTrigger"></a>

### AsyncMessageTrigger
Structure defining a trigger for an asynchronous message


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Filter on the address |
| datastore_key | [bytes](#bytes) | optional | Filter on the datastore key (optional) |






<a name="massalabs-api-v1-AsyncPoolChangeEntry"></a>

### AsyncPoolChangeEntry
AsyncPoolChange Entry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| async_message_id | [string](#string) |  | Async message id |
| value | [AsyncPoolChangeValue](#massalabs-api-v1-AsyncPoolChangeValue) |  | AsyncPool message |






<a name="massalabs-api-v1-AsyncPoolChangeValue"></a>

### AsyncPoolChangeValue
AsyncPoolChangeValue


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [AsyncPoolChangeType](#massalabs-api-v1-AsyncPoolChangeType) |  | The type of the change |
| async_message | [AsyncMessage](#massalabs-api-v1-AsyncMessage) |  | AsyncPool message |






<a name="massalabs-api-v1-DenunciationBlockHeader"></a>

### DenunciationBlockHeader
Variant for Block header denunciation index


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massalabs-api-v1-Slot) |  | Denounciation slot |






<a name="massalabs-api-v1-DenunciationEndorsement"></a>

### DenunciationEndorsement
Variant for Endorsement denunciation index


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massalabs-api-v1-Slot) |  | Denounciation slot |
| index | [fixed32](#fixed32) |  | Denounciation index |






<a name="massalabs-api-v1-DenunciationIndex"></a>

### DenunciationIndex
Index for Denunciations in collections (e.g. like a HashMap...)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block_header | [DenunciationBlockHeader](#massalabs-api-v1-DenunciationBlockHeader) |  | Denunciation block header |
| endorsement | [DenunciationEndorsement](#massalabs-api-v1-DenunciationEndorsement) |  | Denunciation endorsement |






<a name="massalabs-api-v1-ExecutedOpsChangeEntry"></a>

### ExecutedOpsChangeEntry
ExecutedOpsChangeEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| operation_id | [string](#string) |  | OperationId |
| value | [ExecutedOpsChangeValue](#massalabs-api-v1-ExecutedOpsChangeValue) |  | ExecutedOpsChangeValue |






<a name="massalabs-api-v1-ExecutedOpsChangeValue"></a>

### ExecutedOpsChangeValue
ExecutedOpsChangeValue


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [OperationExecutionStatus](#massalabs-api-v1-OperationExecutionStatus) | repeated | The status of the execution of the operation |
| slot | [Slot](#massalabs-api-v1-Slot) |  | Slot until which the operation remains valid (included) |






<a name="massalabs-api-v1-ExecutionOutput"></a>

### ExecutionOutput
ExecutionOutput


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massalabs-api-v1-Slot) |  | Slot |
| block_id | [string](#string) | optional | Block id at that slot (optional) |
| events | [ScExecutionEvent](#massalabs-api-v1-ScExecutionEvent) | repeated | Events emitted by the execution step |
| state_changes | [StateChanges](#massalabs-api-v1-StateChanges) |  | State changes caused by the execution step |






<a name="massalabs-api-v1-FinalizedExecutionOutput"></a>

### FinalizedExecutionOutput
FinalizedExecutionOutput


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massalabs-api-v1-Slot) |  | Slot |






<a name="massalabs-api-v1-LedgerChangeEntry"></a>

### LedgerChangeEntry
LedgerChangeEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Address |
| value | [LedgerChangeValue](#massalabs-api-v1-LedgerChangeValue) |  | Ledger message |






<a name="massalabs-api-v1-LedgerChangeValue"></a>

### LedgerChangeValue
LedgerChangeValue


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [LedgerChangeType](#massalabs-api-v1-LedgerChangeType) |  | The type of the change |
| created_entry | [LedgerEntry](#massalabs-api-v1-LedgerEntry) |  | Created ledger entry |
| updated_entry | [LedgerEntryUpdate](#massalabs-api-v1-LedgerEntryUpdate) |  | Update ledger entry |






<a name="massalabs-api-v1-LedgerEntry"></a>

### LedgerEntry
An entry associated to an address in the `FinalLedger`


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| balance | [fixed64](#fixed64) |  | The balance of that entry |
| bytecode | [bytes](#bytes) |  | Executable bytecode |
| entries | [BytesMapFieldEntry](#massalabs-api-v1-BytesMapFieldEntry) | repeated | A key-value store associating a hash to arbitrary bytes |






<a name="massalabs-api-v1-LedgerEntryUpdate"></a>

### LedgerEntryUpdate
Represents an update to one or more fields of a `LedgerEntry`


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| balance | [SetOrKeepBalance](#massalabs-api-v1-SetOrKeepBalance) |  | Change the balance |
| bytecode | [SetOrKeepBytecode](#massalabs-api-v1-SetOrKeepBytecode) |  | Change the executable bytecode |
| datastore | [SetOrDeleteDatastoreEntry](#massalabs-api-v1-SetOrDeleteDatastoreEntry) | repeated | Change datastore entries |






<a name="massalabs-api-v1-ScExecutionEvent"></a>

### ScExecutionEvent
ScExecutionEvent


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| context | [ScExecutionEventContext](#massalabs-api-v1-ScExecutionEventContext) |  | Sc execution context |
| data | [string](#string) |  | json data string |






<a name="massalabs-api-v1-ScExecutionEventContext"></a>

### ScExecutionEventContext
ScExecutionEvent context


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | base58 encoded slot(period &#43; thread) &#43; index_in_slot |
| origin_slot | [Slot](#massalabs-api-v1-Slot) |  | When was it generated |
| block_id | [string](#string) | optional | Block id if there was a block at that slot (optional) |
| index_in_slot | [fixed64](#fixed64) |  | Index of the event in the slot |
| call_stack | [string](#string) | repeated | Call stack addresses. most recent at the end |
| origin_operation_id | [string](#string) | optional | Origin operation id (optional) |
| status | [ScExecutionEventStatus](#massalabs-api-v1-ScExecutionEventStatus) | repeated | Status |






<a name="massalabs-api-v1-SetOrDeleteDatastoreEntry"></a>

### SetOrDeleteDatastoreEntry
Set or Delete DatastoreEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [SetOrDeleteType](#massalabs-api-v1-SetOrDeleteType) |  | The type of the change |
| datastore_entry | [BytesMapFieldEntry](#massalabs-api-v1-BytesMapFieldEntry) | optional | The balance of that entry (optioal) |






<a name="massalabs-api-v1-SetOrKeepBalance"></a>

### SetOrKeepBalance
Set or Keep Balance


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [SetOrKeepType](#massalabs-api-v1-SetOrKeepType) |  | The type of the change |
| balance | [fixed64](#fixed64) | optional | The balance of that entry (optional) |






<a name="massalabs-api-v1-SetOrKeepBytecode"></a>

### SetOrKeepBytecode
Set or Keep Bytecode


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [SetOrKeepType](#massalabs-api-v1-SetOrKeepType) |  | The type of the change |
| bytecode | [bytes](#bytes) | optional | Executable bytecode (optional) |






<a name="massalabs-api-v1-SlotExecutionOutput"></a>

### SlotExecutionOutput
SlotExecutionOutput


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [ExecutionOutputStatus](#massalabs-api-v1-ExecutionOutputStatus) | repeated | Status |
| execution_output | [ExecutionOutput](#massalabs-api-v1-ExecutionOutput) |  | Executed slot output |






<a name="massalabs-api-v1-StateChanges"></a>

### StateChanges
StateChanges


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ledger_changes | [LedgerChangeEntry](#massalabs-api-v1-LedgerChangeEntry) | repeated | Ledger changes |
| async_pool_changes | [AsyncPoolChangeEntry](#massalabs-api-v1-AsyncPoolChangeEntry) | repeated | Asynchronous pool changes |
| executed_ops_changes | [ExecutedOpsChangeEntry](#massalabs-api-v1-ExecutedOpsChangeEntry) | repeated | Executed operations changes |
| executed_denunciations_changes | [DenunciationIndex](#massalabs-api-v1-DenunciationIndex) | repeated | Executed denunciations changes |





 


<a name="massalabs-api-v1-AsyncPoolChangeType"></a>

### AsyncPoolChangeType
AsyncPoolChangeType type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| ASYNC_POOL_CHANGE_TYPE_UNSPECIFIED | 0 | Default enum value |
| ASYNC_POOL_CHANGE_TYPE_ADD | 1 | Add type |
| ASYNC_POOL_CHANGE_TYPE_ACTIVATE | 2 | Activate only type |
| ASYNC_POOL_CHANGE_TYPE_DELETE | 3 | Delete only type |



<a name="massalabs-api-v1-ExecutionOutputStatus"></a>

### ExecutionOutputStatus
ExecutionOutputStatus type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| EXECUTION_OUTPUT_STATUS_UNSPECIFIED | 0 | Default enum value |
| EXECUTION_OUTPUT_STATUS_CANDIDATE | 1 | Candidate status |
| EXECUTION_OUTPUT_STATUS_FINAL | 2 | Final status |



<a name="massalabs-api-v1-LedgerChangeType"></a>

### LedgerChangeType
LedgerChangeType type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| LEDGER_CHANGE_TYPE_UNSPECIFIED | 0 | Default enum value |
| LEDGER_CHANGE_TYPE_SET | 1 | Set type |
| LEDGER_CHANGE_TYPE_UPDATE | 2 | Update type |
| LEDGER_CHANGE_TYPE_DELETE | 3 | Delete type |



<a name="massalabs-api-v1-OperationExecutionStatus"></a>

### OperationExecutionStatus
OperationExecutionStatus type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| OPERATION_EXECUTION_STATUS_UNSPECIFIED | 0 | Default enum value |
| OPERATION_EXECUTION_STATUS_SUCCESS | 1 | Success status |
| OPERATION_EXECUTION_STATUS_FAILED | 2 | Failed only status |



<a name="massalabs-api-v1-ScExecutionEventStatus"></a>

### ScExecutionEventStatus
ScExecutionEventStatus type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| SC_EXECUTION_EVENT_STATUS_UNSPECIFIED | 0 | Default enum value |
| SC_EXECUTION_EVENT_STATUS_FINAL | 1 | Final status |
| SC_EXECUTION_EVENT_STATUS_READ_ONLY | 2 | Read only status |
| SC_EXECUTION_EVENT_STATUS_FAILURE | 3 | Failure status |



<a name="massalabs-api-v1-SetOrDeleteType"></a>

### SetOrDeleteType
SetOrDeleteType type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| SET_OR_DELETE_TYPE_UNSPECIFIED | 0 | Default enum value |
| SET_OR_DELETE_TYPE_SET | 1 | Sets a new absolute value |
| SET_OR_DELETE_TYPE_DELETE | 2 | Deletes the existing value |



<a name="massalabs-api-v1-SetOrKeepType"></a>

### SetOrKeepType
SetOrKeepType type enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| SET_OR_KEEP_TYPE_UNSPECIFIED | 0 | Default enum value |
| SET_OR_KEEP_TYPE_SET | 1 | Sets a new absolute value |
| SET_OR_KEEP_TYPE_KEEP | 2 | Keeps the existing value |


 

 

 



<a name="massalabs_api_v1_operation-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massalabs/api/v1/operation.proto



<a name="massalabs-api-v1-CallSC"></a>

### CallSC
Calls an exported function from a stored smart contract


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| target_addr | [string](#string) |  | Target smart contract address |
| target_func | [string](#string) |  | Target function name. No function is called if empty |
| param | [bytes](#bytes) |  | Parameter to pass to the target function |
| max_gas | [fixed64](#fixed64) |  | The maximum amount of gas that the execution of the contract is allowed to cost |
| coins | [fixed64](#fixed64) |  | Extra coins that are spent from the caller&#39;s balance and transferred to the target |






<a name="massalabs-api-v1-ExecuteSC"></a>

### ExecuteSC
Execute a smart contract


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [bytes](#bytes) |  | Smart contract bytecode. |
| max_coins | [fixed64](#fixed64) |  | The maximum of coins that could be spent by the operation sender |
| max_gas | [fixed64](#fixed64) |  | The maximum amount of gas that the execution of the contract is allowed to cost |
| datastore | [BytesMapFieldEntry](#massalabs-api-v1-BytesMapFieldEntry) | repeated | A key-value store associating a hash to arbitrary bytes |






<a name="massalabs-api-v1-Operation"></a>

### Operation
The operation as sent in the network


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fee | [fixed64](#fixed64) |  | The fee they have decided for this operation |
| expire_period | [fixed64](#fixed64) |  | After `expire_period` slot the operation won&#39;t be included in a block |
| op | [OperationType](#massalabs-api-v1-OperationType) |  | The type specific operation part |






<a name="massalabs-api-v1-OperationType"></a>

### OperationType
Type specific operation content


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| transaction | [Transaction](#massalabs-api-v1-Transaction) |  | Transfer coins from sender to recipient |
| roll_buy | [RollBuy](#massalabs-api-v1-RollBuy) |  | The sender buys `roll_count` rolls. Roll price is defined in configuration |
| roll_sell | [RollSell](#massalabs-api-v1-RollSell) |  | The sender sells `roll_count` rolls. Roll price is defined in configuration |
| execut_sc | [ExecuteSC](#massalabs-api-v1-ExecuteSC) |  | Execute a smart contract |
| call_sc | [CallSC](#massalabs-api-v1-CallSC) |  | Calls an exported function from a stored smart contract |






<a name="massalabs-api-v1-OperationWrapper"></a>

### OperationWrapper
A wrapper around an operation with its metadata


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | The unique ID of the operation. |
| block_ids | [string](#string) | repeated | The IDs of the blocks in which the operation appears |
| thread | [fixed32](#fixed32) |  | The thread in which the operation can be included |
| operation | [SignedOperation](#massalabs-api-v1-SignedOperation) |  | The operation object itself |
| status | [OperationStatus](#massalabs-api-v1-OperationStatus) | repeated | The execution statuses of the operation |






<a name="massalabs-api-v1-RollBuy"></a>

### RollBuy
The sender buys `roll_count` rolls. Roll price is defined in configuration


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| roll_count | [fixed64](#fixed64) |  | Roll count |






<a name="massalabs-api-v1-RollSell"></a>

### RollSell
The sender sells `roll_count` rolls. Roll price is defined in configuration


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| roll_count | [fixed64](#fixed64) |  | Roll count |






<a name="massalabs-api-v1-SignedOperation"></a>

### SignedOperation
Signed operation


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [Operation](#massalabs-api-v1-Operation) |  | Operation |
| signature | [string](#string) |  | A cryptographically generated value using `serialized_data` and a public key. |
| content_creator_pub_key | [string](#string) |  | The public-key component used in the generation of the signature |
| content_creator_address | [string](#string) |  | Derived from the same public key used to generate the signature |
| id | [string](#string) |  | A secure hash of the data. See also [massa_hash::Hash] |






<a name="massalabs-api-v1-Transaction"></a>

### Transaction
Transfer coins from sender to recipient


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| recipient_address | [string](#string) |  | Recipient address |
| amount | [fixed64](#fixed64) |  | Amount |





 


<a name="massalabs-api-v1-OperationStatus"></a>

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


 

 

 



<a name="massalabs_api_v1_slot-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massalabs/api/v1/slot.proto



<a name="massalabs-api-v1-IndexedSlot"></a>

### IndexedSlot
When an address is drawn to create an endorsement it is selected for a specific index


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [Slot](#massalabs-api-v1-Slot) |  | Slot |
| index | [fixed64](#fixed64) |  | Endorsement index in the slot |






<a name="massalabs-api-v1-Slot"></a>

### Slot
A point in time where a block is expected


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| period | [fixed64](#fixed64) |  | Period |
| thread | [fixed32](#fixed32) |  | Thread |





 

 

 

 



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

