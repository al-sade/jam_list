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
    $scope.user = {};
    // calling our submit function.
    $scope.submitForm = function() {
        // Posting data to php file
        $http({
            method  : 'POST',
            url     : 'ajax/postSong.php',
            data    : $scope.user, //forms user object
            headers : {'Content-Type': 'application/x-www-form-urlencoded'}
        })
            .success(function(data) {
                if (data.errors) {
                    // Showing errors.
                    $scope.errorSong= data.errors.song;
                    $scope.errorArtist= data.errors.artist;
                    $scope.errorLink= data.errors.link;
                } else {
                    $scope.message = data.message;
                }
            });
        $scope.user = null
        alert("היידה!!!");
    };
    $scope.deleteSong = function($songName, $artist, $link) {
        // Posting data to php file
        $http({
            method  : 'POST',
            url     : 'ajax/deleteSong.php',
            data    : $songName, //forms user object
            headers : {'Content-Type': 'application/x-www-form-urlencoded'}
        })
            .success(function(data) {

                if (data.errors) {
                    // Showing errors.
                    $scope.errorSong= data.errors.song;
                    $scope.errorArtist= data.errors.artist;
                    $scope.errorLink= data.errors.link;
                } else {
                    $scope.message = data.message;
                }
            });
        $scope.user = null
    }

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
