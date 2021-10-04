pub contract Foo {
  pub resource NFT {
    pub let foo: String

    init(foo: String) {
      self.foo = foo
    }
  }

  pub fun createNFT(foo: String): @NFT {
    return <- create NFT(foo: foo)
  }
}
