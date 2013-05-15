function HeaderViewModel() {
  var self = this;
  self.name = "<a href='#/signin'>Sign In</a>";
}

ko.applyBindings(new HeaderViewModel(), $("#header")[0]);