var app = app || {};

app.Showcase = Backbone.Collection.extend({
  // fill in the model property

  // use localStorage for testing. Be sure to delete this line when your API is ready.
  url: 'http://localhost:3000/shows'

  //url: 'http://localhost:3000/shows'
  // fill in the url property
});

