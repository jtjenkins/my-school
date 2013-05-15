function AssignmentViewModel() {
  var self = this;
  self.name = "Assignments";
}

ko.applyBindings(new AssignmentViewModel(), $("#assignment")[0]);