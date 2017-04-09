app.controller("CtrlTrivia",function($scope,$http){

	$scope.arrTrivia = [];

	$scope.getAll = function(){

		$http.get("http://10.5.2.59/~tobias/Brasentina/api/v1/trivia").then(function(response){
			console.log(response.data);
				$scope.arrTrivia = response.data;
		});
	}


	$scope.getAll();
});