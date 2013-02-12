if (Meteor.isClient) {
  Template.hello.greeting = function () {
    return "Welcome to rez.";
  };

  Template.hello.events({
    'click input' : function () {
      // template data, if any, is available in 'this'
      if (typeof console !== 'undefined'){
        console.log("You pressed the button");
      }

    }
  });

  Template.hello.helpers({
    name: function(){Session.get('name')}
  })
}

if (Meteor.isServer) {
  Meteor.startup(function () {
    // code to run on server at startup
  });
}
