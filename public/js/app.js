//Models
//We start off by listing our models for our data
function Class(name, teacher, students) {
    var self = this;
    self.name = ko.observable(name);
    self.teacher = ko.observable(teacher);
    self.students = ko.observableArray(initialMeal);
}

function AppViewModel() {
  var self = this;
  self.assignments = ko.observableArray([]);
}

ko.applyBindings(new AppViewModel());