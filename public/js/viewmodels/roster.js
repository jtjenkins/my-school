function RosterViewModel() {
  var self = this;
  self.name = "Roster";
}


ko.applyBindings(new RosterViewModel(), $("#roster")[0]);