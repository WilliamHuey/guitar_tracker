GuitarTracker = Ember.Application.create();

GuitarTracker.Store = DS.Store.extend({
    revision: 12,
    adapter: 'DS.FixtureAdapter'
});

GuitarTracker.Router.map(function(){
   this.resource('about');
});

GuitarTracker.Guitar = DS.Model.extend({
    brand: DS.attr('string'),
    modelName: DS.attr('string'),
    year: DS.attr('integer'),
    color: DS.attr('string'),
    weight: DS.attr('decimal'),
    frets: DS.attr('integer'),
    strings: DS.attr('integer')
});