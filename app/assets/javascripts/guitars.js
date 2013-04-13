GuitarTracker = Ember.Application.create({
    rootElement: '#right-panel-unordered-list'
});

GuitarTracker.IndexRoute = Ember.Route.extend({
    redirect: function() {
        this.transitionTo('guitars');
    }
});

GuitarTracker.Store = DS.Store.extend({
    revision: 12,
    adapter: 'DS.FixtureAdapter'
});

GuitarTracker.Router.map(function () {
    this.resource('guitars');
    this.resource('about');
});

GuitarTracker.GuitarsRoute = Ember.Route.extend({
   model: function() {

       return GuitarTracker.Guitar.find();
   }
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

GuitarTracker.Guitar.FIXTURES = [
    {
        id: 1,
        brand: 'Gibson',
        modelName: 'the name of model is',
        year: 2004,
        color: 'rainbow',
        weight: 35.6,
        frets: 6,
        strings: 7
    },
    {
        id: 2,
        brand: 'Aria',
        modelName: 'a name for a model',
        year: 2004,
        color: 'rainbow',
        weight: 35.6,
        frets: 6,
        strings: 7

    }
];