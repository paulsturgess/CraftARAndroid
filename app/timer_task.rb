class TimerTask < Java::Util::TimerTask

  attr_accessor :activity

  # This method will be called from another thread, and UI work must
  # happen in the main thread, so we dispatch it via a Handler object.
  def run
    @activity.handler.post -> {
      intent = Android::Content::Intent.new(
        activity,
        LaunchersActivity
      )
      activity.startActivity(intent)
      activity.finish()
    }
  end

end