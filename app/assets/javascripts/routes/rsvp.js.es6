export default Ember.Route.extend({
  setupController: function(controller, model) {
    controller.set('model', model);
    controller.set('groups', this.store.find('group'));
    controller.set('guests', this.store.find('guest'));
    controller.set('groupSelected', false);
    controller.set('rsvpSubmitted', false);
    controller.set('rsvpOptions', [null, "Accept with pleasure", "Decline with regret", 'Accept with regret', 'Decline with pleasure']);
    controller.set('visitDurationOptions', [null, "Just the day of the wedding.", "The whole week!"]);
  }
});
