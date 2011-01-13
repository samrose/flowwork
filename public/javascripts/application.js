// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// Sammy
var appState = function(state){
    if(state=="sammy"){
        alert('sammy is working');
    }
};
(function($) {
    var app = $.sammy(function() {
        this.get('#/sammy', function() {
            appState("sammy");
        });
    });
    $(function() {
        app.run()
    });
})(jQuery);
