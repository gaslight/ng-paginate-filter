/* ng-paginate-filter - 0.0.1
 * A description about how Lineman helped you build your lib
 * https://github.com/gaslight/ng-paginate-filter
 */
(function() {
  angular.module("ngPaginate", []);

  angular.module("ngPaginate").filter("paginate", function() {
    return function(items, currentPage, numPerPage) {
      var slice_from, slice_to;
      slice_from = (currentPage - 1) * numPerPage;
      slice_to = slice_from + numPerPage;
      return items.slice(slice_from, slice_to);
    };
  });

}).call(this);
