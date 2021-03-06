# Flow Storage Fees

## Setup

### Start emulator with fees enabled

```sh
flow emulator start --transaction-fees
```

### Deploy demo contract

```sh
flow accounts add-contract Foo contracts/Foo.cdc
```

## Scripts

### Get current transaction fee

Get the current flat rate transaction inclusion fee in FLOW.

```sh
flow scripts execute scripts/get_transaction_fee.cdc
```

### Get current storage minimum (FLOW)

Get the current storage minimum fee in FLOW.

```sh
flow scripts execute scripts/get_storage_min.cdc
```

### Get storage cost (FLOW)

Get the current storage cost per MB in FLOW.

```sh
flow scripts execute scripts/get_storage_cost.cdc
```

### Get storage capacity (MB)

Get the storage capacity (in megabytes) for a single account.

```sh
flow scripts execute scripts/get_storage_capacity.cdc --arg Address:0xf8d6e0586b0a20c7
```

### Get storage used (MB)

```sh
flow scripts execute scripts/get_storage_used.cdc --arg Address:0xf8d6e0586b0a20c7
```

## Tansactions

### Set transaction fee

```sh
flow transactions send transactions/set_transaction_fee.cdc --arg UFix64:0.5
```

### Set storage cost (FLOW/MB)

```sh
flow transactions send transactions/set_storage_cost.cdc --arg UFix64:20.0
```

### Set storage minimum (FLOW)

```sh
flow transactions send transactions/set_storage_min.cdc --arg UFix64:1.0
```

### Sample transaction

Run a dummy transaction that emits fee events.

```sh
flow transactions send transactions/test.cdc
```

### Save new NFT to storage

Run a transaction that saves a new NFT to storage.

```sh
flow transactions send transactions/create_nft.cdc
```

## Events

### Fees deposited

Emitted on every transaction, indicating the transaction fees paid for the transaction.

`A.e5a8b7f23e8b548f.FlowFees.TokensDeposited`

### Transaction fee changed

`A.f8d6e0586b0a20c7.FlowServiceAccount.TransactionFeeUpdated`

### Storage cost changed

Note: this event emits the MB per FLOW. Take the inverse to get cost per FLOW.

`A.f8d6e0586b0a20c7.FlowStorageFees.StorageMegaBytesPerReservedFLOWChanged`

### Storage minimum changed

`A.f8d6e0586b0a20c7.FlowStorageFees.MinimumStorageReservationChanged`
