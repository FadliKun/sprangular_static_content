angular.module('Sprangular.StaticContent')
  .config ($routeProvider) ->
    $routeProvider.when '/pages/:id',
      controller: 'PageShowCtrl'
      templateUrl: 'pages/show.html'
      resolve:
        page: (StaticContent, $route)->
          slug = $route.current.params.id
          StaticContent.find(slug)

Sprangular.StaticContent = {
  addRoutes: (routeProvider) ->
    routeProvider.when '/:slug',
      controller: 'PageShowCtrl'
      templateUrl: 'pages/show.html'
      resolve:
        page: (StaticContent, $route)->
          slug = $route.current.params.slug
          StaticContent.find(slug)
}
