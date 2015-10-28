var app = app || {};

app.Show = Backbone.model.extend({
  defaults: function() {
    return {
      coverImage: 'img/placeholder.png',
      title: 'no title',
      genre: 'no genre',
      stars: '*'
    }
  }
})

// create a Backbone Model constructor inside the app object named Show
// assign the following defaults:
// coverImage: 'img/placeholder.png',
// title: 'Unknown',
// genre: 'Unknown',
// stars: '★'
