//ROUTES
$(document).ready(function(){
  Sammy(function() {
      this.get("#/assignments", function(){
        hidePages();
        $("#assignment").show();
      });

      this.get("#/assignments/:assignmentID", function(){
        hidePages();
        $("#assignment").show();
      });

      this.get("#/calendar", function(){
        hidePages();
        $("#calendar").show();
        $('#calendarUI').fullCalendar('render');
      });

      this.get("#/classes", function() {
        hidePages();
        $("#classroom").show();
      });

      this.get("#/:classes/:classID", function() {
        hidePages();
        $("#classroom").show();
          // AppViewModel.chosenFolderId(this.params.folder);
          // AppViewModel.chosenFolderData(null);
          // $.get("/mail", { mailId: this.params.mailId }, self.chosenMailData);
      });

      this.get("#/messages", function(){
        hidePages();
        $("#message").show();
      });

      this.get("#/messages/:messageID", function(){
        hidePages();
        $("#message").show();
      });

      this.get("#/rosters", function(){
        hidePages();
        $("#roster").show();
      });

      this.get("#/rosters/:rosterID", function(){
        hidePages();
        $("#roster").show();
      });

      this.get("", function(){
        hidePages();
        $("#overview").show();
      });
  }).run();
});

function hidePages(){
    $("#overview").hide();
    $("#classroom").hide();
    $("#roster").hide();
    $("#assignment").hide();
    $("#calendar").hide();
    $("#message").hide();
    $("#account").hide();
}