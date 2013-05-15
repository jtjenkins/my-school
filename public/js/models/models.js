function Asset (url){
  var self = this;
  self.url = url;
  self.name = ko.computed(function(){
    var split = self.url.split("/");
    return split[split.length-1];
  });
}

function Assignment(title, details, assignedDate, dueDate, assets){
  var self = this;
  self.title = title;
  self.details = details;
  self.assignedDate = assignedDate;
  self.dueDate = dueDate;
  self.assets = assets;

}

function Classroom(name, teacher, students, assignments) {
  var self = this;
  self.name = ko.observable(name);
  self.teacher = ko.observable(teacher);
  self.students = ko.observableArray(students);
  self.assignments = ko.observableArray(assignments);
}

function School(name){
  var self = this;
  self.name = name;
}

function User(firstName, middleName, lastName, grade, birthMonth, birthDay, birthYear, phoneNum, admin, parent, student, teacher, email, token){
  var self = this;
  self.firstName = firstName;
  self.middleName = middleName;
  self.lastName = lastName;
  self.grade = grade;
  self.birthMonth = birthMonth;
  self.birthDay = birthDay;
  self.birthYear = birthYear;
  self.phoneNum = phoneNum;
  self.admin = admin;
  self.parent = parent;
  self.student = student;
  self.teacher = teacher;
  self.email = email;
  self.token = token;
}

function Models(){
  var self = this;
  self.user = ko.observable();
  self.school = ko.observable();
  self.classrooms = ko.observableArray([]);
}