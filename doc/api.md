# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [massa/api/v1/api.proto](#massa_api_v1_api-proto)
    - [BlockParent](#massa-api-v1-BlockParent)
    - [BlockResult](#massa-api-v1-BlockResult)
    - [BlocksContext](#massa-api-v1-BlocksContext)
    - [DatastoreEntriesQuery](#massa-api-v1-DatastoreEntriesQuery)
    - [DatastoreEntry](#massa-api-v1-DatastoreEntry)
    - [DatastoreEntryFilter](#massa-api-v1-DatastoreEntryFilter)
    - [EndorsementResult](#massa-api-v1-EndorsementResult)
    - [GetBlocksBySlotsRequest](#massa-api-v1-GetBlocksBySlotsRequest)
    - [GetBlocksBySlotsResponse](#massa-api-v1-GetBlocksBySlotsResponse)
    - [GetBlocksFilter](#massa-api-v1-GetBlocksFilter)
    - [GetBlocksQuery](#massa-api-v1-GetBlocksQuery)
    - [GetBlocksRequest](#massa-api-v1-GetBlocksRequest)
    - [GetBlocksResponse](#massa-api-v1-GetBlocksResponse)
    - [GetDatastoreEntriesRequest](#massa-api-v1-GetDatastoreEntriesRequest)
    - [GetDatastoreEntriesResponse](#massa-api-v1-GetDatastoreEntriesResponse)
    - [GetLargestStakersRequest](#massa-api-v1-GetLargestStakersRequest)
    - [GetLargestStakersResponse](#massa-api-v1-GetLargestStakersResponse)
    - [GetNextBlockBestParentsRequest](#massa-api-v1-GetNextBlockBestParentsRequest)
    - [GetNextBlockBestParentsResponse](#massa-api-v1-GetNextBlockBestParentsResponse)
    - [GetOperationsFilter](#massa-api-v1-GetOperationsFilter)
    - [GetOperationsQuery](#massa-api-v1-GetOperationsQuery)
    - [GetOperationsRequest](#massa-api-v1-GetOperationsRequest)
    - [GetOperationsResponse](#massa-api-v1-GetOperationsResponse)
    - [GetScExecutionEventsContext](#massa-api-v1-GetScExecutionEventsContext)
    - [GetScExecutionEventsFilter](#massa-api-v1-GetScExecutionEventsFilter)
    - [GetScExecutionEventsQuery](#massa-api-v1-GetScExecutionEventsQuery)
    - [GetScExecutionEventsRequest](#massa-api-v1-GetScExecutionEventsRequest)
    - [GetScExecutionEventsResponse](#massa-api-v1-GetScExecutionEventsResponse)
    - [GetSelectorDrawsRequest](#massa-api-v1-GetSelectorDrawsRequest)
    - [GetSelectorDrawsResponse](#massa-api-v1-GetSelectorDrawsResponse)
    - [GetTransactionsThroughputRequest](#massa-api-v1-GetTransactionsThroughputRequest)
    - [GetTransactionsThroughputResponse](#massa-api-v1-GetTransactionsThroughputResponse)
    - [GetVersionRequest](#massa-api-v1-GetVersionRequest)
    - [GetVersionResponse](#massa-api-v1-GetVersionResponse)
    - [LargestStakerEntry](#massa-api-v1-LargestStakerEntry)
    - [LargestStakersContext](#massa-api-v1-LargestStakersContext)
    - [LargestStakersFilter](#massa-api-v1-LargestStakersFilter)
    - [LargestStakersQuery](#massa-api-v1-LargestStakersQuery)
    - [NewBlocksHeadersRequest](#massa-api-v1-NewBlocksHeadersRequest)
    - [NewBlocksHeadersResponse](#massa-api-v1-NewBlocksHeadersResponse)
    - [NewBlocksRequest](#massa-api-v1-NewBlocksRequest)
    - [NewBlocksResponse](#massa-api-v1-NewBlocksResponse)
    - [NewEndorsementsRequest](#massa-api-v1-NewEndorsementsRequest)
    - [NewEndorsementsResponse](#massa-api-v1-NewEndorsementsResponse)
    - [NewFilledBlocksRequest](#massa-api-v1-NewFilledBlocksRequest)
    - [NewFilledBlocksResponse](#massa-api-v1-NewFilledBlocksResponse)
    - [NewOperationsFilter](#massa-api-v1-NewOperationsFilter)
    - [NewOperationsQuery](#massa-api-v1-NewOperationsQuery)
    - [NewOperationsRequest](#massa-api-v1-NewOperationsRequest)
    - [NewOperationsResponse](#massa-api-v1-NewOperationsResponse)
    - [NewSlotExecutionOutputsFilter](#massa-api-v1-NewSlotExecutionOutputsFilter)
    - [NewSlotExecutionOutputsQuery](#massa-api-v1-NewSlotExecutionOutputsQuery)
    - [NewSlotExecutionOutputsRequest](#massa-api-v1-NewSlotExecutionOutputsRequest)
    - [NewSlotExecutionOutputsResponse](#massa-api-v1-NewSlotExecutionOutputsResponse)
    - [OperationResult](#massa-api-v1-OperationResult)
    - [OperationsContext](#massa-api-v1-OperationsContext)
    - [SelectorDrawsFilter](#massa-api-v1-SelectorDrawsFilter)
    - [SelectorDrawsQuery](#massa-api-v1-SelectorDrawsQuery)
    - [SendBlocksRequest](#massa-api-v1-SendBlocksRequest)
    - [SendBlocksResponse](#massa-api-v1-SendBlocksResponse)
    - [SendEndorsementsRequest](#massa-api-v1-SendEndorsementsRequest)
    - [SendEndorsementsResponse](#massa-api-v1-SendEndorsementsResponse)
    - [SendOperationsRequest](#massa-api-v1-SendOperationsRequest)
    - [SendOperationsResponse](#massa-api-v1-SendOperationsResponse)
    - [TransactionsThroughputRequest](#massa-api-v1-TransactionsThroughputRequest)
    - [TransactionsThroughputResponse](#massa-api-v1-TransactionsThroughputResponse)
  
    - [OpType](#massa-api-v1-OpType)
  
    - [MassaService](#massa-api-v1-MassaService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="massa_api_v1_api-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## massa/api/v1/api.proto



<a name="massa-api-v1-BlockParent"></a>

### BlockParent
Block parent tuple


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block_id | [string](#string) |  | Block id |
| period | [fixed64](#fixed64) |  | Period |






<a name="massa-api-v1-BlockResult"></a>

### BlockResult
Holds Block response


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block_id | [string](#string) |  | Block id |






<a name="massa-api-v1-BlocksContext"></a>

### BlocksContext
Blocks context


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [massa.model.v1.Slot](#massa-model-v1-Slot) |  | Slot |






<a name="massa-api-v1-DatastoreEntriesQuery"></a>

### DatastoreEntriesQuery
DatastoreEntries Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [DatastoreEntryFilter](#massa-api-v1-DatastoreEntryFilter) |  | Filter |






<a name="massa-api-v1-DatastoreEntry"></a>

### DatastoreEntry
DatastoreEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| final_value | [bytes](#bytes) |  | final datastore entry value |
| candidate_value | [bytes](#bytes) |  | candidate_value datastore entry value |






<a name="massa-api-v1-DatastoreEntryFilter"></a>

### DatastoreEntryFilter



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Associated address of the entry |
| key | [bytes](#bytes) |  | Datastore key |






<a name="massa-api-v1-EndorsementResult"></a>

### EndorsementResult
Holds Endorsement response


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endorsements_ids | [string](#string) | repeated | Endorsements ids |






<a name="massa-api-v1-GetBlocksBySlotsRequest"></a>

### GetBlocksBySlotsRequest
GetBlocksBySlotsRequest holds request for GetBlocksBySlots


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| slots | [massa.model.v1.Slot](#massa-model-v1-Slot) | repeated | Slots |






<a name="massa-api-v1-GetBlocksBySlotsResponse"></a>

### GetBlocksBySlotsResponse
GetBlocksBySlotsResponse holds response from GetBlocksBySlots


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| blocks | [massa.model.v1.Block](#massa-model-v1-Block) | repeated | Blocks |






<a name="massa-api-v1-GetBlocksFilter"></a>

### GetBlocksFilter
GetBlocks Filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Block id |






<a name="massa-api-v1-GetBlocksQuery"></a>

### GetBlocksQuery
GetBlocks Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [GetBlocksFilter](#massa-api-v1-GetBlocksFilter) |  | Filter |






<a name="massa-api-v1-GetBlocksRequest"></a>

### GetBlocksRequest
GetBlocksRequest holds request for GetBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| queries | [GetBlocksQuery](#massa-api-v1-GetBlocksQuery) | repeated | Queries |






<a name="massa-api-v1-GetBlocksResponse"></a>

### GetBlocksResponse
GetBlocksResponse holds response from GetBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| context | [BlocksContext](#massa-api-v1-BlocksContext) |  | Context |
| blocks | [massa.model.v1.BlockWrapper](#massa-model-v1-BlockWrapper) | repeated | Blocks wrappers |






<a name="massa-api-v1-GetDatastoreEntriesRequest"></a>

### GetDatastoreEntriesRequest
GetDatastoreEntriesRequest holds request from GetDatastoreEntries


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| queries | [DatastoreEntriesQuery](#massa-api-v1-DatastoreEntriesQuery) | repeated | Queries |






<a name="massa-api-v1-GetDatastoreEntriesResponse"></a>

### GetDatastoreEntriesResponse
GetDatastoreEntriesResponse holds response from GetDatastoreEntries


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| entries | [DatastoreEntry](#massa-api-v1-DatastoreEntry) | repeated | Datastore entries |






<a name="massa-api-v1-GetLargestStakersRequest"></a>

### GetLargestStakersRequest
GetLargestStakersRequest holds request from GetLargestStakers


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| query | [LargestStakersQuery](#massa-api-v1-LargestStakersQuery) |  | Query |






<a name="massa-api-v1-GetLargestStakersResponse"></a>

### GetLargestStakersResponse
GetLargestStakersResponse holds response from GetLargestStakers


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| context | [LargestStakersContext](#massa-api-v1-LargestStakersContext) |  | Context |
| stakers | [LargestStakerEntry](#massa-api-v1-LargestStakerEntry) | repeated | Largest stakers |






<a name="massa-api-v1-GetNextBlockBestParentsRequest"></a>

### GetNextBlockBestParentsRequest
GetNextBlockBestParentsRequest holds request for GetNextBlockBestParents


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |






<a name="massa-api-v1-GetNextBlockBestParentsResponse"></a>

### GetNextBlockBestParentsResponse
GetNextBlockBestParentsResponse holds response from GetNextBlockBestParents


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| parents | [BlockParent](#massa-api-v1-BlockParent) | repeated | Best parents |






<a name="massa-api-v1-GetOperationsFilter"></a>

### GetOperationsFilter
GetOperations Filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Operation id |






<a name="massa-api-v1-GetOperationsQuery"></a>

### GetOperationsQuery
GetOperations Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [GetOperationsFilter](#massa-api-v1-GetOperationsFilter) |  | Filter |






<a name="massa-api-v1-GetOperationsRequest"></a>

### GetOperationsRequest
GetOperationsRequest holds request for GetOperations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| queries | [GetOperationsQuery](#massa-api-v1-GetOperationsQuery) | repeated | Queries |






<a name="massa-api-v1-GetOperationsResponse"></a>

### GetOperationsResponse
GetOperationsResponse holds response from GetOperations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| context | [OperationsContext](#massa-api-v1-OperationsContext) |  | Context |
| operations | [massa.model.v1.OperationWrapper](#massa-model-v1-OperationWrapper) | repeated | Operations wrappers |






<a name="massa-api-v1-GetScExecutionEventsContext"></a>

### GetScExecutionEventsContext
ScExecutionEvents context


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [massa.model.v1.Slot](#massa-model-v1-Slot) |  | Slot |






<a name="massa-api-v1-GetScExecutionEventsFilter"></a>

### GetScExecutionEventsFilter
GetScExecutionEvents Filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| start_slot | [massa.model.v1.Slot](#massa-model-v1-Slot) | optional | Start slot (Optional) |
| end_slot | [massa.model.v1.Slot](#massa-model-v1-Slot) | optional | End slot (Optional) |
| caller_address | [string](#string) | optional | Caller address |
| emitter_address | [string](#string) | optional | Emitter address (Optional) |
| original_operation_id | [string](#string) | optional | Original operation id (Optional) |
| status | [massa.model.v1.ScExecutionEventStatus](#massa-model-v1-ScExecutionEventStatus) | repeated | Status |






<a name="massa-api-v1-GetScExecutionEventsQuery"></a>

### GetScExecutionEventsQuery
GetScExecutionEvents Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [GetScExecutionEventsFilter](#massa-api-v1-GetScExecutionEventsFilter) |  | Filter |






<a name="massa-api-v1-GetScExecutionEventsRequest"></a>

### GetScExecutionEventsRequest
GetScExecutionEventsRequest holds request for GetScExecutionEvents


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| query | [GetScExecutionEventsQuery](#massa-api-v1-GetScExecutionEventsQuery) |  | Query |






<a name="massa-api-v1-GetScExecutionEventsResponse"></a>

### GetScExecutionEventsResponse
GetScExecutionEventsResponse holds response from GetScExecutionEvents


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| context | [GetScExecutionEventsContext](#massa-api-v1-GetScExecutionEventsContext) |  | Context |
| events | [massa.model.v1.ScExecutionEvent](#massa-model-v1-ScExecutionEvent) | repeated | ScExecutionEvents |






<a name="massa-api-v1-GetSelectorDrawsRequest"></a>

### GetSelectorDrawsRequest
GetSelectorDrawsRequest holds request from GetSelectorDraws


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| queries | [SelectorDrawsQuery](#massa-api-v1-SelectorDrawsQuery) | repeated | Queries |






<a name="massa-api-v1-GetSelectorDrawsResponse"></a>

### GetSelectorDrawsResponse
GetSelectorDrawsResponse holds response from GetSelectorDraws


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| selector_draws | [massa.model.v1.SelectorDraws](#massa-model-v1-SelectorDraws) | repeated | Selector draws |






<a name="massa-api-v1-GetTransactionsThroughputRequest"></a>

### GetTransactionsThroughputRequest
GetTransactionsThroughputRequest holds request for GetTransactionsThroughput


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |






<a name="massa-api-v1-GetTransactionsThroughputResponse"></a>

### GetTransactionsThroughputResponse
GetTransactionsThroughputResponse holds response from GetTransactionsThroughput


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| throughput | [fixed32](#fixed32) |  | Transactions throughput |






<a name="massa-api-v1-GetVersionRequest"></a>

### GetVersionRequest
GetVersionRequest holds request from GetVersion


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |






<a name="massa-api-v1-GetVersionResponse"></a>

### GetVersionResponse
GetVersionResponse holds response from GetVersion


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| version | [string](#string) |  | Version |






<a name="massa-api-v1-LargestStakerEntry"></a>

### LargestStakerEntry
LargestStakerEntry


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Address |
| rolls | [fixed64](#fixed64) |  | Rolls |






<a name="massa-api-v1-LargestStakersContext"></a>

### LargestStakersContext
LargestStakers context


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [massa.model.v1.Slot](#massa-model-v1-Slot) |  | Slot |






<a name="massa-api-v1-LargestStakersFilter"></a>

### LargestStakersFilter
LargestStakers Filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| min_rolls | [fixed64](#fixed64) | optional | Minimum rolls (Optional) |
| max_rolls | [fixed64](#fixed64) | optional | Maximum rolls (Optional) |






<a name="massa-api-v1-LargestStakersQuery"></a>

### LargestStakersQuery
LargestStakers Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| offset | [fixed64](#fixed64) |  | Starting offset for the list of stakers. Defaults to 1 |
| limit | [fixed64](#fixed64) |  | Limits the number of stakers to return. Defaults to 50 |
| filter | [LargestStakersFilter](#massa-api-v1-LargestStakersFilter) |  | Filter |






<a name="massa-api-v1-NewBlocksHeadersRequest"></a>

### NewBlocksHeadersRequest
NewBlocksHeadersRequest holds request for NewBlocksHeaders


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |






<a name="massa-api-v1-NewBlocksHeadersResponse"></a>

### NewBlocksHeadersResponse
NewBlocksHeadersResponse holds response from NewBlocksHeaders


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| block_header | [massa.model.v1.SignedBlockHeader](#massa-model-v1-SignedBlockHeader) |  | Signed block header |






<a name="massa-api-v1-NewBlocksRequest"></a>

### NewBlocksRequest
NewBlocksRequest holds request for NewBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |






<a name="massa-api-v1-NewBlocksResponse"></a>

### NewBlocksResponse
NewBlocksResponse holds response from NewBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| block | [massa.model.v1.SignedBlock](#massa-model-v1-SignedBlock) |  | Signed block |






<a name="massa-api-v1-NewEndorsementsRequest"></a>

### NewEndorsementsRequest
NewEndorsementsRequest holds request for NewEndorsements


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |






<a name="massa-api-v1-NewEndorsementsResponse"></a>

### NewEndorsementsResponse
NewEndorsementsResponse holds response from NewEndorsements


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| endorsement | [massa.model.v1.SignedEndorsement](#massa-model-v1-SignedEndorsement) |  | Signed endorsement |






<a name="massa-api-v1-NewFilledBlocksRequest"></a>

### NewFilledBlocksRequest
NewFilledBlocksRequest holds request for NewFilledBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |






<a name="massa-api-v1-NewFilledBlocksResponse"></a>

### NewFilledBlocksResponse
NewFilledBlocksResponse holds response from NewFilledBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| filled_block | [massa.model.v1.FilledBlock](#massa-model-v1-FilledBlock) |  | Block with operations content |






<a name="massa-api-v1-NewOperationsFilter"></a>

### NewOperationsFilter
NewOperations Filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| types | [OpType](#massa-api-v1-OpType) | repeated | Operation type enum |






<a name="massa-api-v1-NewOperationsQuery"></a>

### NewOperationsQuery
NewOperations Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [NewOperationsFilter](#massa-api-v1-NewOperationsFilter) |  | Filter |






<a name="massa-api-v1-NewOperationsRequest"></a>

### NewOperationsRequest
NewOperationsRequest holds request for NewOperations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| query | [NewOperationsQuery](#massa-api-v1-NewOperationsQuery) |  | Query |






<a name="massa-api-v1-NewOperationsResponse"></a>

### NewOperationsResponse
NewOperationsResponse holds response from NewOperations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| operation | [massa.model.v1.SignedOperation](#massa-model-v1-SignedOperation) |  | Signed operation |






<a name="massa-api-v1-NewSlotExecutionOutputsFilter"></a>

### NewSlotExecutionOutputsFilter
NewSlotExecutionOutputs Filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [massa.model.v1.ExecutionOutputStatus](#massa-model-v1-ExecutionOutputStatus) | repeated | Execution output status enum |






<a name="massa-api-v1-NewSlotExecutionOutputsQuery"></a>

### NewSlotExecutionOutputsQuery
NewSlotExecutionOutputs Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [NewSlotExecutionOutputsFilter](#massa-api-v1-NewSlotExecutionOutputsFilter) |  | Filter |






<a name="massa-api-v1-NewSlotExecutionOutputsRequest"></a>

### NewSlotExecutionOutputsRequest
NewSlotExecutionOutputsRequest holds request for NewSlotExecutionOutputs


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| query | [NewSlotExecutionOutputsQuery](#massa-api-v1-NewSlotExecutionOutputsQuery) |  | Query |






<a name="massa-api-v1-NewSlotExecutionOutputsResponse"></a>

### NewSlotExecutionOutputsResponse
NewSlotExecutionOutputsResponse holds response from NewSlotExecutionOutputs


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| output | [massa.model.v1.SlotExecutionOutput](#massa-model-v1-SlotExecutionOutput) |  | Slot execution output |






<a name="massa-api-v1-OperationResult"></a>

### OperationResult
Holds Operation response


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| operations_ids | [string](#string) | repeated | Operations ids |






<a name="massa-api-v1-OperationsContext"></a>

### OperationsContext
Operations context


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [massa.model.v1.Slot](#massa-model-v1-Slot) |  | Slot |






<a name="massa-api-v1-SelectorDrawsFilter"></a>

### SelectorDrawsFilter
SelectorDraws Filter


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | Address |






<a name="massa-api-v1-SelectorDrawsQuery"></a>

### SelectorDrawsQuery
SelectorDraws Query


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [SelectorDrawsFilter](#massa-api-v1-SelectorDrawsFilter) |  | Filter |






<a name="massa-api-v1-SendBlocksRequest"></a>

### SendBlocksRequest
SendBlocksRequest holds parameters to SendBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| block | [massa.model.v1.SecureShare](#massa-model-v1-SecureShare) |  | Secure shared block |






<a name="massa-api-v1-SendBlocksResponse"></a>

### SendBlocksResponse
SendBlocksResponse holds response from SendBlocks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| result | [BlockResult](#massa-api-v1-BlockResult) |  | Block result |
| error | [google.rpc.Status](#google-rpc-Status) |  | gRPC error(status) |






<a name="massa-api-v1-SendEndorsementsRequest"></a>

### SendEndorsementsRequest
SendEndorsementsRequest holds parameters to SendEndorsements


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| endorsements | [massa.model.v1.SecureShare](#massa-model-v1-SecureShare) | repeated | Secure shared endorsements |






<a name="massa-api-v1-SendEndorsementsResponse"></a>

### SendEndorsementsResponse
SendEndorsementsResponse holds response from SendEndorsements


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| result | [EndorsementResult](#massa-api-v1-EndorsementResult) |  | Endorsement result |
| error | [google.rpc.Status](#google-rpc-Status) |  | gRPC error(status) |






<a name="massa-api-v1-SendOperationsRequest"></a>

### SendOperationsRequest
SendOperationsRequest holds parameters to SendOperations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| operations | [massa.model.v1.SecureShare](#massa-model-v1-SecureShare) | repeated | Secured shared operations |






<a name="massa-api-v1-SendOperationsResponse"></a>

### SendOperationsResponse
SendOperationsResponse holds response from SendOperations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| result | [OperationResult](#massa-api-v1-OperationResult) |  | Operation result |
| error | [google.rpc.Status](#google-rpc-Status) |  | gRPC error(status) |






<a name="massa-api-v1-TransactionsThroughputRequest"></a>

### TransactionsThroughputRequest
TransactionsThroughputRequest holds request for TransactionsThroughput


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| interval | [fixed64](#fixed64) | optional | Timer interval in seconds (Optional). Defaults to 10s |






<a name="massa-api-v1-TransactionsThroughputResponse"></a>

### TransactionsThroughputResponse
TransactionsThroughputResponse holds response from TransactionsThroughput


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Request id |
| throughput | [fixed32](#fixed32) |  | Transactions throughput |





 


<a name="massa-api-v1-OpType"></a>

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


 

 


<a name="massa-api-v1-MassaService"></a>

### MassaService
Massa gRPC service

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetBlocks | [GetBlocksRequest](#massa-api-v1-GetBlocksRequest) | [GetBlocksResponse](#massa-api-v1-GetBlocksResponse) | Get blocks by ids |
| GetBlocksBySlots | [GetBlocksBySlotsRequest](#massa-api-v1-GetBlocksBySlotsRequest) | [GetBlocksBySlotsResponse](#massa-api-v1-GetBlocksBySlotsResponse) | Get blocks by slots |
| GetDatastoreEntries | [GetDatastoreEntriesRequest](#massa-api-v1-GetDatastoreEntriesRequest) | [GetDatastoreEntriesResponse](#massa-api-v1-GetDatastoreEntriesResponse) | Get datastore entries |
| GetLargestStakers | [GetLargestStakersRequest](#massa-api-v1-GetLargestStakersRequest) | [GetLargestStakersResponse](#massa-api-v1-GetLargestStakersResponse) | Get largest stakers |
| GetNextBlockBestParents | [GetNextBlockBestParentsRequest](#massa-api-v1-GetNextBlockBestParentsRequest) | [GetNextBlockBestParentsResponse](#massa-api-v1-GetNextBlockBestParentsResponse) | Get next block best parents |
| GetOperations | [GetOperationsRequest](#massa-api-v1-GetOperationsRequest) | [GetOperationsResponse](#massa-api-v1-GetOperationsResponse) | Get operations |
| GetScExecutionEvents | [GetScExecutionEventsRequest](#massa-api-v1-GetScExecutionEventsRequest) | [GetScExecutionEventsResponse](#massa-api-v1-GetScExecutionEventsResponse) | Get smart contracts execution events |
| GetSelectorDraws | [GetSelectorDrawsRequest](#massa-api-v1-GetSelectorDrawsRequest) | [GetSelectorDrawsResponse](#massa-api-v1-GetSelectorDrawsResponse) | Get selector draws |
| GetTransactionsThroughput | [GetTransactionsThroughputRequest](#massa-api-v1-GetTransactionsThroughputRequest) | [GetTransactionsThroughputResponse](#massa-api-v1-GetTransactionsThroughputResponse) | Get transactions throughput |
| GetVersion | [GetVersionRequest](#massa-api-v1-GetVersionRequest) | [GetVersionResponse](#massa-api-v1-GetVersionResponse) | Get node version |
| NewBlocks | [NewBlocksRequest](#massa-api-v1-NewBlocksRequest) stream | [NewBlocksResponse](#massa-api-v1-NewBlocksResponse) stream | New received and produced blocks |
| NewBlocksHeaders | [NewBlocksHeadersRequest](#massa-api-v1-NewBlocksHeadersRequest) stream | [NewBlocksHeadersResponse](#massa-api-v1-NewBlocksHeadersResponse) stream | New received and produced blocks headers |
| NewEndorsements | [NewEndorsementsRequest](#massa-api-v1-NewEndorsementsRequest) stream | [NewEndorsementsResponse](#massa-api-v1-NewEndorsementsResponse) stream | New received and produced endorsements |
| NewFilledBlocks | [NewFilledBlocksRequest](#massa-api-v1-NewFilledBlocksRequest) stream | [NewFilledBlocksResponse](#massa-api-v1-NewFilledBlocksResponse) stream | New received and produced blocks with operations |
| NewOperations | [NewOperationsRequest](#massa-api-v1-NewOperationsRequest) stream | [NewOperationsResponse](#massa-api-v1-NewOperationsResponse) stream | New received and produced operations |
| NewSlotExecutionOutputs | [NewSlotExecutionOutputsRequest](#massa-api-v1-NewSlotExecutionOutputsRequest) stream | [NewSlotExecutionOutputsResponse](#massa-api-v1-NewSlotExecutionOutputsResponse) stream | New received and slot execution events |
| SendBlocks | [SendBlocksRequest](#massa-api-v1-SendBlocksRequest) stream | [SendBlocksResponse](#massa-api-v1-SendBlocksResponse) stream | Send blocks |
| SendEndorsements | [SendEndorsementsRequest](#massa-api-v1-SendEndorsementsRequest) stream | [SendEndorsementsResponse](#massa-api-v1-SendEndorsementsResponse) stream | Send endorsements |
| SendOperations | [SendOperationsRequest](#massa-api-v1-SendOperationsRequest) stream | [SendOperationsResponse](#massa-api-v1-SendOperationsResponse) stream | Send operations |
| TransactionsThroughput | [TransactionsThroughputRequest](#massa-api-v1-TransactionsThroughputRequest) stream | [TransactionsThroughputResponse](#massa-api-v1-TransactionsThroughputResponse) stream | Transactions throughput |

 



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

