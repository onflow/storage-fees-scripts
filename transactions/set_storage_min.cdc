import FlowStorageFees from 0xf8d6e0586b0a20c7

transaction(min: UFix64) {
    
  let adminRef: &FlowStorageFees.Administrator

  prepare(acct: AuthAccount) {
    self.adminRef = acct.borrow<&FlowStorageFees.Administrator>(from: /storage/storageFeesAdmin)
      ?? panic("Could not borrow reference to storage fees admin")
  }

  execute {
    self.adminRef.setMinimumStorageReservation(min)
  }
}
