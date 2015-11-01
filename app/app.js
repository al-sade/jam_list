var app = angular.module('myApp', ['ui.bootstrap']);

app.filter('startFrom', function() {
	return function(input, start) {
		if (input) {
			start = +start; //parse to int
			return input.slice(start);
		}
		return [];
	}
});
app.controller('customersCrtl', function($scope, $http, $timeout) {
	$http.get('ajax/getSongs.php').success(function(data) {
		$scope.list = data;
		$scope.currentPage = 1; //current page
		$scope.entryLimit = 100; //max no of items to display in a page
		$scope.filteredItems = $scope.list.length; //Initially for no filter
		$scope.totalItems = $scope.list.length;
	});
	$scope.addSong = function() {
		$http.post('post_es.php', {
			'song': $scope.songName,
			'artist': $scope.artist,
			'link': $scope.link
		}).success(function(data, status, headers, config) {
			if (data.msg != '') {
				$scope.msgs.push(data.msg);
			} else {
				$scope.errors.push(data.error);
			}
		}).error(function(data, status) { // called asynchronously if an error occurs
			// or server returns response with an error status.
			$scope.errors.push(status);
		})
	};
	$scope.setPage = function(pageNo) {
		$scope.currentPage = pageNo;
	};
	$scope.filter = function() {
		$timeout(function() {
			$scope.filteredItems = $scope.filtered.length;
		}, 10);
	};
	$scope.sort_by = function(predicate) {
		$scope.predicate = predicate;
		$scope.reverse = !$scope.reverse;
	};
});
