import FlowStorageFees from 0xf8d6e0586b0a20c7

pub fun main(address: Address): UFix64 {
    return FlowStorageFees.calculateAccountCapacity(address)
}
