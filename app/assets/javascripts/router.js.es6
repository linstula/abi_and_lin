var Router = Ember.Router.extend();

Router.map(function() {
  this.route('join_us', { path: '/join_us' });
  this.route('the_party', { path: '/the_party' });
  this.route('stuff_to_do', { path: '/stuff_to_do' });
  this.route('logistics', { path: '/logistics' });
  this.route('rsvp', { path: '/rsvp' });
});

export default Router;
