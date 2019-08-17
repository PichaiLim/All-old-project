app.controller('defaultCtrl', function ($scope, $location) {
    $scope.items = [
        { path: '/', title: 'Home', icon: 'fa fa-home fa-2x hidden visible-xs pull-left' },
        { path: '/About_Us', title: 'About Us', icon: 'fa fa-users fa-2x hidden visible-xs pull-left' },
        { path: '/Fair_Information', title: 'Fair Information', icon: 'fa fa-openid fa-2x hidden visible-xs pull-left' },
        { path: '/Our_Service', title: 'Our Service', icon: 'fa fa-wrench fa-2x hidden visible-xs pull-left' },
        { path: '/Product', title: 'Product', icon: 'fa fa-diamond fa-2x hidden visible-xs pull-left' },
        { path: '/Contact_Us', title: 'Contact Us', icon: 'fa fa-phone fa-2x hidden visible-xs pull-left' }
    ];

    $scope.isActive = function (item) {
        if (item.path == $location.path()) {
            return true;
        }
        return false;
    }
});