//= require_tree .

# Basic styles
# ---------------------------------------------------------------------
jQuery ->
  # Create the dropdown base
  $("<select />").appendTo(".pagenav")

  # Create default option "Go to..."
  $("<option />", {
     "selected": "selected",
     "value"   : "",
     "text"    : "Navigation:"
  }).appendTo("nav select")

  # Populate dropdown with menu items
  $(".pagenav > ul > li").each ->
    el = $(this)
    hasChildren = el.find("ul")
    children    = el.find("li")
    if (hasChildren.length)
      $("<optgroup />", {
        "label": el.find("> h4").text()
      }).appendTo("nav select")

      children.each ->
        $("<option />", {
          "text": " - " + $(this).text(),
          "value": $(this).find("> a").attr("href")
        }).appendTo("optgroup:last")
    else
      $("<option />", {
         "value"   : el.find("> a").attr("href"),
         "text"    : el.text()
      }).appendTo("nav select")

  # To make  more unobtrusive:
  # http://css-tricks.com/4064-unobtrusive-page-changer/
  $("nav select").change ->
    window.location = $(this).find("option:selected").val()
