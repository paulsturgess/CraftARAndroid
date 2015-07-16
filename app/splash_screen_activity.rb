class SplashScreenActivity < Android::App::Activity

  attr_reader :handler

  SPLASH_SCREEN_DELAY = 1000

  def onCreate savedInstanceState
    super
    @handler = Android::Os::Handler.new

    requestWindowFeature(Android::View::Window::FEATURE_NO_TITLE)
    setContentView(R::Layout::Splash_screen)

    task = TimerTask.new
    task.activity = self

    timer = Java::Util::Timer.new
    timer.schedule(task, SPLASH_SCREEN_DELAY)
  end

end