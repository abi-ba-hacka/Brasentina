app.controller("CtrlEventos",function($scope,$http, $stateParams){

	$scope.arrEventos = [];
	$scope.evento = {};

	$scope.getAll = function(){
		$http.get("http://10.5.2.59/~tobias/Brasentina/api/v1/beneficio").then(function(response){
			console.log(response.data);
			$scope.arrEventos = response.data.data;

			if($stateParams.id){
				$scope.evento = $scope.arrEventos[$stateParams.id];
			}
		});
	}

	$scope.getAll();



	$scope.goFoto = function(){
		window.location = "#/foto";
	}


});
	
