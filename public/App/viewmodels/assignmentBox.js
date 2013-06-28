define(function() {
    var AssignmentBox = function(title, description, classes) {
        this.title = title || AssignmentBox.blank;
        this.description = description || AssignmentBox.blank;
        this.classes = classes || {};
        this.options = ["Save", "Cancel"];
    };
 
    AssignmentBox.prototype.selectOption = function (dialogResult) {
        console.log(dialogResult);
        if(dialogResult == "Save"){
            //TODO: Save the changes somehow
        }
        this.modal.close(dialogResult);
    };
 
    AssignmentBox.blank = '';
 
    return AssignmentBox;
});