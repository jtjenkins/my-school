'use strict';


// Declare app level module which depends on filters, and services
angular.module('myApp', ['myApp.filters', 'myApp.services', 'myApp.directives', 'myApp.controllers']).
  config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/overview', {templateUrl: 'partials/overview.html', controller: 'OverviewCtrl'});
    $routeProvider.when('/classes', {templateUrl: 'partials/classes.html', controller: 'ClassesCtrl'});
    $routeProvider.when('/rosters', {templateUrl: 'partials/rosters.html', controller: 'RostersCtrl'});
    $routeProvider.when('/assignments', {templateUrl: 'partials/assignments.html', controller: 'AssignmentsCtrl'});
    $routeProvider.when('/assignment/:assignmentID', {templateUrl: 'partials/assignment-details.html', controller: 'AssignmentDetailsCtrl'});
    $routeProvider.when('/assignment/:assignmentID/edit', {templateUrl: 'partials/assignment-details-edit.html', controller: 'AssignmentDetailsEditCtrl'});
    $routeProvider.when('/calendar', {templateUrl: 'partials/calendar.html', controller: 'CalendarCtrl'});
    $routeProvider.when('/messages', {templateUrl: 'partials/messages.html', controller: 'MessagesCtrl'});
    $routeProvider.when('/signin', {templateUrl: 'partials/signin.html', controller: 'SigninCtrl'});
    $routeProvider.otherwise({redirectTo: '/overview'});
  }]);
