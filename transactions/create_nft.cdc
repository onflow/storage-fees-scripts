import Foo from 0xf8d6e0586b0a20c7

transaction {
	prepare(signer: AuthAccount) {
    let nft <- Foo.createNFT(foo: "bar")

    signer.save(<-nft, to: /storage/foo)
  }
}
