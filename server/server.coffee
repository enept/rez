Meteor.publish "players", ()->
  Player.find({})

Meteor.publish "stages", (stageId)->
  Stage.find(stageId)

Meteor.publish "worlds", (worldId)->
  World.find(worldId)
