function CalendarViewModel() {
  var self = this;
  self.name = "Calendar";
  self.events = ko.observableArray([
              {
                title: "English - Test Event",
                start: "2013-05-06T03:15:30Z",
                end: "2013-05-10T13:15:30Z",
                url: "#/assignments?id=1",
                color: "green",
                textColor: "white"
              },
              {
                title: "History - Test Event 2",
                start: "2013-05-06T03:15:30Z",
                end: "2013-05-10T13:15:30Z",
                url: "#/assignments?id=1",
                color: "blue",
                textColor: "white"
              },
              {
                title: "Math - Test Event klsjdflksjdflksjdfklsjdlkfsjdlkfjsdlkfjskldfjsdlk",
                start: "2013-05-06T03:15:30Z",
                end: "2013-05-06T06:15:30Z",
                url: "#/assignments?id=1",
                color: "yellow",
                textColor: "black"
              },
              {
                title: "Biology - Test Event klsjdflksjdflksjdfklsjdlkfsjdlkfjsdlkfjskldfjsdlk",
                start: "2013-05-06T03:15:30Z",
                end: "2013-05-01T06:15:30Z",
                url: "#/assignments?id=1",
                color: "orange",
                textColor: "black"
              },
              {
                title: "Football - Test Event klsjdflksjdflksjdfklsjdlkfsjdlkfjsdlkfjskldfjsdlk",
                start: "2013-05-06T03:15:30Z",
                end: "2013-05-06T06:15:30Z",
                url: "#/assignments?id=1",
                color: "red",
                textColor: "white"
              }
            ]);

  $(document).ready(function(){
    $('#calendarUI').fullCalendar({
      eventSources: [
      {
        events: self.events()
      }]
    });
    console.log("calendar loaded");
  });
}


ko.applyBindings(new CalendarViewModel(), $("#calendar")[0]);