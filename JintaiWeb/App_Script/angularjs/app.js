/// <reference path="D:\Documents\Visual Studio 2013\Projects\WebJintaiJewelry\WebJintaiJewelry\partials/_index.html" />

var app = angular.module('JintaiJewelryApp', ["ngResource", "ngRoute"]);

app.constant('baseUrl', 'http://localhost:26734/index.html');

app.config(function ($routeProvider, $locationProvider) {

    var basePathUrl = "partialviews/";

    $routeProvider.when("/", {
        templateUrl: basePathUrl + '_index.html'
    });


    $routeProvider.when("/About_Us", {
        templateUrl: basePathUrl + "_aboutus.html"
    });


    $routeProvider.when('/Fair_Information', {
        templateUrl: basePathUrl + "_fairinfomation.html"
    });

    $routeProvider.when('/Branches', {
        templateUrl: basePathUrl + "_branches.html"
    });

    $routeProvider.when('/Our_Service', {
        templateUrl: basePathUrl + "_ourservice.html"
    });


    $routeProvider.when('/Product', {
        templateUrl: basePathUrl + "_product.html"
    });

    $routeProvider.when('/Contact_Us', {
        templateUrl: basePathUrl + "_contactus.html"
    });

    $routeProvider.otherwise({
        redirectTo: '/'
    });

    //$routeProvider.when('/Contact_Us/:id', {
    //    templateUrl: basePathUrl + "_contactus.html"
    //});

    //$locationProvider.html5Mode({
    //    enabled: true,
    //    requireBase: false
    //});
});

app.run(function ($rootScope, $location, $anchorScroll, $routeParams) {
    $rootScope.$on('$routeChangeSuccess', function (newRoute, oldRoute) {
        $location.hash($routeParams.scrollTo);
        $anchorScroll();
    });
})