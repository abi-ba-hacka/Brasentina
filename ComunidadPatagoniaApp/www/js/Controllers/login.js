app.controller("CtrlLogin",function($scope){

	$scope.goTabs = function(){
		window.location = "#/tab/dash";
		console.log(window.location);
	};
});