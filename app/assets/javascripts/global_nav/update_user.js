$.ajax({
  url: "http://staging.challengepost.com/accounts/current_user.json",
  success: function(data) {
    $("#global-nav-screen-name").text(data.screen_name);
  },
   xhrFields: {
      withCredentials: true
   }
});
