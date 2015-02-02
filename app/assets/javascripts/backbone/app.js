
var app = app || {}; 
var ENTER_KEY = 13;

#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.Myapp =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  
$(function() {
// Kick things off by creating the **App**.
new app.AppView(); 
});