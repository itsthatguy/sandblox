console.log("waypoints loaded");

angular.module('waypoints', ['ui']);

/* Controllers */
function WaypointsController($scope) {
  console.log("WaypointsController");
  $scope.test = function(){
    alert('You have scrolled to an entry.');
  }
}