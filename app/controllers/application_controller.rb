class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Send raw event to mixpanel from frontend via javascript
  # Allows us to take advantage of mixpanel cookies such as
  # google analytics utm tracking
  #
  def mixpanel_append_track_event(event_title, event_properties = {})
    mixpanel_js_client.append_track(event_title, event_properties)
  end

  private

  def mixpanel_js_client
    @mixpanel_js_client ||= Mixpanel::Tracker.new(
      Figleaf::Settings.mixpanel.api_key, {
        persist: true, env: mixpanel_env })
  end

  def mixpanel_env
    @mixpanel_env ||= {
      'REMOTE_ADDR' => request.env['REMOTE_ADDR'],
      'HTTP_X_FORWARDED_FOR' => request.env['HTTP_X_FORWARDED_FOR'],
      'rack.session' => request.env['rack.session'],
      'mixpanel_events' => request.env['mixpanel_events']
    }
  end



end
