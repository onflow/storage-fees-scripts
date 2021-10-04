import FlowServiceAccount from 0xf8d6e0586b0a20c7

transaction(fee: UFix64) {

	let serviceAccountAdmin: &FlowServiceAccount.Administrator

	prepare(signer: AuthAccount) {
		self.serviceAccountAdmin = signer.borrow<&FlowServiceAccount.Administrator>(from: /storage/flowServiceAdmin)
			?? panic("Unable to borrow reference to administrator resource")
	}

	execute {
		self.serviceAccountAdmin.setTransactionFee(fee)
	}
}
