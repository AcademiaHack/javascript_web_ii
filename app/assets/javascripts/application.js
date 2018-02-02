// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap
//= require_tree .



function serializeArray(form) {
  var field, l, s = [];
  if (typeof form == 'object' && form.nodeName == "FORM") {
      var len = form.elements.length;
      for (var i=0; i<len; i++) {
          field = form.elements[i];
          if (field.name && !field.disabled && field.type != 'file' && field.type != 'reset' && field.type != 'submit' && field.type != 'button') {
              if (field.type == 'select-multiple') {
                  l = form.elements[i].options.length;
                  for (j=0; j<l; j++) {
                      if(field.options[j].selected)
                          s[s.length] = { name: field.name, value: field.options[j].value };
                  }
              } else if ((field.type != 'checkbox' && field.type != 'radio') || field.checked) {
                  s[s.length] = { name: field.name, value: field.value };
              }
          }
      }
  }
  return s;
}