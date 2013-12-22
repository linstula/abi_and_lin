export default Ember.ArrayController.extend({
  actions: {
    selectGroup: function(group) {
      var guests = this.get('guests').filterBy('group', group)
      this.set('group', group);
      this.set('liveQuery', group.get('name'));
      this.set('groupSelected', true);
      if (this.get('foundGuests') == []) { this.set('foundGuests', guests);}
    },

    submitRSVP: function(group) {
      var guests = this.get('foundGuests'), group = this.get('group')

      group.save();
      guests.forEach(function(guest) {
        guest.save();
      });

      this.set('rsvpSubmitted', true);
    }
  },

  liveSearch: function() {
    var _this = this
    var searchResults = this.groups.filter(function(group, index, self) {
      var search = _this.get('liveQuery').toLowerCase(), name = group.get('name').toLowerCase()
      if (name.match(search)) { return true; }
    });

    if (this.groups.filterBy('name', this.get('liveQuery')).length != 1) {
      this.set('foundGuests', '');
      this.set('groupSelected', false);
    }

    if (this.liveQuery) {
      this.set('foundGroups', searchResults)
    } else {
      this.set('foundGroups', []);
    }
  }.property('liveQuery')
});
