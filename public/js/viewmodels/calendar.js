function CalendarViewModel() {
  var self = this;
  self.name = "Calendar";
}


ko.applyBindings(new CalendarViewModel(), $("#calendar")[0]);