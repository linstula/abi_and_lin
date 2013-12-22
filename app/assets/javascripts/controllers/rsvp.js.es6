export default Ember.ArrayController.extend({
  actions: {
    selectGroup: function(group) {
      var guests = this.store.find('guest', { group_id: group.id } )
      this.set('group', group);
      this.set('liveQuery', group.get('name'));
      if (this.get('foundGuests') == []) { this.set('foundGuests', guests);}
    }
  },

  liveSearch: function() {
    var _this = this
    var searchResults = this.groups.filter(function(group, index, self) {
      var search = _this.get('liveQuery').toLowerCase(), name = group.get('name').toLowerCase()
      if (name.match(search)) { return true; }
    });

    if (this.groups.filterBy('name', this.get('liveQuery')).length != 1) {
      this.set('foundGuests', '')
    }

    if (this.liveQuery) {
      this.set('foundGroups', searchResults)
    } else {
      this.set('foundGroups', []);
    }
  }.property('liveQuery')
});
