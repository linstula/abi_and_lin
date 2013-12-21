export default Ember.ArrayController.extend({
  liveSearch: function() {
    var _this = this
    var searchResults = this.groups.filter(function(group, index, self) {
      var search = _this.get('liveQuery').toLowerCase(), name = group.get('name').toLowerCase()
      if (name.match(search)) { return true; }
    });
    if (this.liveQuery) {
      this.set('foundGroups', searchResults)
    } else {
      this.set('foundGroups', [])
    }
  }.property('liveQuery')
});
