// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


$(function() {
  $("#submit").click(function() {
    $("#formHidden").slideToggle();
  });

  $(".ouve").hover(function() {
    $("#map .pos[id=\"" + $(this).attr("id") + "\"]").addClass("selected");
  }, function() {
    $("#map .pos[id=\"" + $(this).attr("id") + "\"]").removeClass("selected");
  });

  $("#back").click(function(e) {
    e.preventDefault();
    $("#content .wrapper").css("margin-left", "0");
    $("#ouves").css("width", "636px");
    $("#back").css("visibility", "hidden");
  });


  $(".ouve").click(function(e) {
    e.preventDefault();
    $("#content .wrapper").css("margin-left", "-260px");
    $("#ouves").css("width", "400px");
    $("#back").css("visibility", "visible");
  });
});
