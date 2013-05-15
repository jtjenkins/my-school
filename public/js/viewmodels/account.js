function AccountViewModel() {
  var self = this;
  self.name = "Accounts";
}

ko.applyBindings(new AccountViewModel(), $("#account")[0]);