function MessageViewModel() {
  var self = this;
  self.name = "Message";
}

ko.applyBindings(new MessageViewModel(), $("#message")[0]);