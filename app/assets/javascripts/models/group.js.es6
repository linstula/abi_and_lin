export default DS.Model.extend({
  guests: DS.hasMany('guest'),
  name:   DS.attr('string'),
  email:  DS.attr('string')
});
