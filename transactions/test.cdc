transaction {

	let serviceAccountAdmin: &FlowServiceAccount.Administrator

	prepare(signer: AuthAccount) {}

	execute {
    var i = 0
		while i < 50 {
      log("foo")
      i = i + 1
    }
	}
}
