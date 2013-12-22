export default DS.Model.extend({
  group:          DS.belongsTo('group'),
  name:           DS.attr('string'),
  rsvpStatus:     DS.attr('string'),
  visitDuration:  DS.attr('string')
});
