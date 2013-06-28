define(function() {
    var dashboard = function () {
        //this is viewmodel
        this.title = "Dashboard";
    };

    dashboard.prototype.viewAttached = function (view) {
        //you can get the view after it's bound and connected to it's parent dom node if you want
    };

    return dashboard;
});