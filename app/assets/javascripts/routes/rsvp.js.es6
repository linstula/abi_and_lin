export default Ember.Route.extend({
  setupController: function(controller, model) {
    controller.set('model', model);
    controller.set('groups', this.store.find('group'));
    controller.set('guests', this.store.find('guest'));
    controller.set('groupSelected', false);
    controller.set('rsvpSubmitted', false);
    controller.set('rsvpOptions', [null, "Heck Yes!", "No way, jose!"]);
    controller.set('visitDurationOptions', [null, "Just the day of the wedding.", "The whole week."]);
  }
});
