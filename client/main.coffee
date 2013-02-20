Meteor.autosubscribe ->
  Meteor.subscribe "players"
  Meteor.subscribe "stages"
  Meteor.subscribe "worlds"
  Meteor.subscribe 'users'

playerId =  Player.insert
  'name': "Player #{Player.find({}).count()}"

Session.set 'playerId', playerId

console.log Session.get 'playerId'
