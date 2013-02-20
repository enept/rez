Template.viewport.helpers
  showStage: ->
    Session.get('showStage')
  showPlayer: ->
    # render player

Template.player.helpers
  name: ->
    this.name
  left: ->
    console.log this.position
    this.position?.left

Template.player.rendered = ->
  console.log 'player rendered'
  $player = $(this.find('.player'))
  if this.data.id = Session.get('playerId') and !keysBound
    Mousetrap.bind 'right', ->
      $player.css
        left: 100

    Mousetrap.bind 'left', ->
      $player.css
        left: 0

    keysBound = true

Template.stage.helpers
  players: ->
    Player.find({})
