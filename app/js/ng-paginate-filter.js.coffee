angular.module "ngPaginate", []

angular.module("ngPaginate").filter "paginate", ->
  (items, currentPage, numPerPage) ->
    slice_from = ((currentPage - 1) * numPerPage )
    slice_to   = slice_from + numPerPage
    items.slice(slice_from, slice_to)
