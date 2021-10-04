import FlowStorageFees from 0xf8d6e0586b0a20c7

pub fun main(address: Address): UFix64 {
    let account = getAccount(address)
    return FlowStorageFees.convertUInt64StorageBytesToUFix64Megabytes(account.storageUsed)
}
