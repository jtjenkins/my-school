$(document).ready(function(){

	//Models
	//We start off by listing our models for our data
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
		var self.name = name;
	}

	function User(firstName, middleName, lastName, grade, birthMonth, birthDay, birthYear, phoneNum, admin, parent, student, teacher, email, token){
		var self = this;
		var self.firstName = firstName;
		var self.middleName = middleName;
		var self.lastName = lastName;
		var self.grade = grade;
		var self.birthMonth = birthMonth;
		var self.birthDay = birthDay;
		var self.birthYear = birthYear;
		var self.phoneNum = phoneNum;
		var self.admin = admin;
		var self.parent = parent;
		var self.student = student;
		var self.teacher = teacher;
		var self.email = email;
		var self.token = token;
	}

	//and the viewmodel
	function AppViewModel() {
	  var self = this;
	  self.assignments = ko.observableArray();
	  self.classrooms = ko.observableArray();
	  self.messages = ko.observableArray();
	  self.user = ko.observable();
	  self.username = ko.observable();
	  self.password = ko.observable();

	  self.login = function(){
	  	$.post("/login", {username: self.username, password, self.password})
	  		.done(function(data){
	  			data = JSON.parse(data);
	  			self.user = new User(data.first_name, data.middle_name, data.last_name, data.grade, data.birth_month, data.birth_day, data.birth_year, data.phone_num, data.admin, data.parent, data.student, data.teacher, data.email, data.token);
	  			self.getData();
	  		})
	  		.fail(function(){
	  			//show some issue with logging in
	  		});
	  };

	  self.getData = function(){
	  	self.getClassrooms();
	  };

	  self.getClassrooms = function(){
	  	$.get("/classrooms", {token: self.user.token})
	  		.done(function(data){
	  			data = JSON.parse(data);
	  			//clear out the current assignments
	  			self.classrooms.removeAll();
	  			for (var i = 0; i < data.length; i++){
	  				temp = data[i];
	  				assignments = [];
	  				for(var j = 0; j < temp.assignments.length; j++){
	  					t = temp.assignments[j];
	  					assignments.push(new Assignement(t.title, t.details, t.assigned_date, t.due_date, t.assets));
	  				}
	  				teacher = new User (temp.teacher.first_name, temp.teacher.middle_name, temp.teacher.last_name); //TODO, populate the rest of this with blanks
	  				students = [];
	  				for(var j = 0; j < temp.students.length; j++){
	  					s = temp.students[j];
	  					students.push(new User(s.first_name, s.middle_name, s.last_name)); //TODO: populate the rest of this with blanks
	  				}
	  				self.classrooms.push(new Assignment(temp.name, teacher, students, assignments);
	  			}
	  		})
	  		.fail(function(){
	  			//show some error message
	  		});
	  };

	  self.get
	}

	ko.applyBindings(new AppViewModel());
});