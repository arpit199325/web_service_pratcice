angular.module('myapp').controller('myctrl', ['$scope', '$http', function($scope,$http){

var all_data="http://localhost:8002/AngularHibernateRest/webapi/testing";

$http.get(all_data).then(function(response){
	
	$scope.alldata=response.data;
	
});


}]);