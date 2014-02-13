beforeEach module("ngPaginate")

describe "paginateFilter", ->
  beforeEach ->
    @alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    inject (paginateFilter) =>
      @paginateFilter = paginateFilter

  it "should be a thing", ->
    expect(@paginateFilter).toBeDefined()

  it "should filter", ->
    expect(@paginateFilter(@alphabet,1,10).length).toEqual(10)
    expect(@paginateFilter(@alphabet,1,10)[0]).toEqual("A")
    expect(@paginateFilter(@alphabet,1,10)[9]).toEqual("J")

  it "should switch pages", ->
    expect(@paginateFilter(@alphabet,2,10)[0]).toEqual("K")
