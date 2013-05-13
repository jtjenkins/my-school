'use strict';

/* Controllers */

angular.module('myApp.controllers', [])
  .controller('OverviewCtrl', ['$scope',function($scope) {

  }])
  .controller('ClassesCtrl', ['$scope',function($scope) {

  }])
  .controller('RostersCtrl', ['$scope',function($scope) {

  }])
  .controller('AssignmentsCtrl', ['$scope',function($scope) {

  }])
  .controller('AssignmentDetailsCtrl', ['$scope',function($scope) {

  }])
  .controller('AssignmentDetailsEditCtrl', ['$scope',function($scope) {
    $scope.save = function() {
      alert($scope.title + " " + $scope.assignedDate.valueOf() + " " + $scope.dueDate);
    };
  }])
  .controller('CalendarCtrl', ['$scope',function($scope) {

  }])
  .controller('MessagesCtrl', ['$scope',function($scope) {

  }])
  .controller('SigninCtrl', ['$scope',function($scope) {
    $scope.signIn = function() {
      alert($scope.username + " " + $scope.password);
      //do login things here
    };
  }]);