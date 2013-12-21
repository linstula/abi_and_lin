export default Ember.Route.extend({
  setupController: function(controller, model) {
    controller.set('model', model);
    controller.set('groups', this.store.find('group'));
  }
});
