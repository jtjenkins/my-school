function ClassroomViewModel() {
  var self = this;
  self.name = "Classroom";
}

ko.applyBindings(new ClassroomViewModel(), $("#classroom")[0]);