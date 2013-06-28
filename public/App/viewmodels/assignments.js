define(['durandal/http', 'durandal/app', "viewmodels/assignmentBox"], function (http, app, AssignmentBox) {
    var assignments = function () {
        //this is viewmodel
        this.title = "Calendar";
        this.viewCalendar = function(){
          $("#calNav").addClass("active");
          $("#listNav").removeClass("active");
          $("#assignment-list").css("display", "none");
          $("#assignment-calendar").css("display","block");
        };
        this.viewList = function(){
          $("#calNav").removeClass("active");
          $("#listNav").addClass("active");
          $("#assignment-list").css("display", "block");
          $("#assignment-calendar").css("display","none");
        };
        this.showAssignment = function(title, description, classes, options) {
            app.showModal(new AssignmentBox(title, description, classes, options));
        };

        this.showAssignment("title", "description", ["A","B"]);
    };

    assignments.prototype.viewAttached = function (view) {
        //you can get the view after it's bound and connected to it's parent dom node if you want
    };

    return assignments;
});