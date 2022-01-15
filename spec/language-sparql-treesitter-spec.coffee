describe "Sparql grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-sparql-treesitter")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.sparql-treesitter")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.sparql-treesitter"
