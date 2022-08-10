var items = false;

function update_selected() {
  $("#item_level2").val(0);
  $("#item_level2").find("option[value!=0]").detach();

  $("#item_level2").append(items.filter(".item" + $(this).val()));
}

$(function() {
  items = $("#item_level2").find("option[value!=0]");
  items.detach();

  $("#item_level1").change(update_selected);
  $("#item_level1").trigger("change");
});

