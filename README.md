# ng-paginate filter

This a very simple filter to do client side pagination. It takes two arguments:

* current page (1 based index)
* number per page

For example, if you have a collection of 23 times,

```html
<tr ng-repeat="items | paginate:2:5">
```

will display items 6 - 10.

## Usage

Add it to your app.

```
bower install ng-paginate-filter
```

Add the module.

```javascript
angular.module("app", ["ngPaginate"]);
```
