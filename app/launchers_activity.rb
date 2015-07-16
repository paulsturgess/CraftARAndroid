class LaunchersActivity < Android::App::Activity

  def onCreate savedInstanceState
    super
    requestWindowFeature(Android::View::Window::FEATURE_NO_TITLE)
    setContentView(R::Layout::Activity_launchers)

    # # Setup howto link
    @mHowToLink = findViewById(R::Id::Howto_link)
    @mHowToLink.setClickable(true)
    @mHowToLink.setOnClickListener(self)
    @mAboutArProgrammatically = findViewById(R::Id::Howto_link_ar_programmatically)
    @mAboutArProgrammatically.setClickable(true)
    @mAboutArProgrammatically.setOnClickListener(self)
    @mAboutArFromCraftAR = findViewById(R::Id::Howto_link_ar_from_craftar)
    @mAboutArFromCraftAR.setClickable(true)
    @mAboutArFromCraftAR.setOnClickListener(self)
    @mAboutRecognitionOnly = findViewById(R::Id::Howto_link_recognition_only)
    @mAboutRecognitionOnly.setClickable(true)
    @mAboutRecognitionOnly.setOnClickListener(self)

    # Setup example links
    @mArProgrammatically = findViewById(R::Id::Play_ar_programmatically)
    @mArProgrammatically.setClickable(true)
    @mArProgrammatically.setOnClickListener(self)
    @mArFromCraftAR = findViewById(R::Id::Play_ar_from_craftar)
    @mArFromCraftAR.setClickable(true)
    @mArFromCraftAR.setOnClickListener(self)
    @mRecognitionOnly = findViewById(R::Id::Play_recognition_only)
    @mRecognitionOnly.setClickable(true)
    @mRecognitionOnly.setOnClickListener(self)

    # Setup bottom Links
    @mButtonCatchoom = findViewById(R::Id::ImageButton_logo)
    @mButtonCatchoom.setOnClickListener(self)
    @mButtonSignUp = findViewById(R::Id::Button_signUp)
    @mButtonSignUp.setOnClickListener(self)
  end

  def onClick v

    # Clicked on title or howto links
    if v == @mHowToLink
      launchHowto = Android::Content::Intent.new(self, HowToActivity)
      launchHowto.putExtra(HowToActivity::HOWTO_LAYOUT_EXTRA, R::Layout::Activity_howto)
    elsif v == @mAboutArProgrammatically
      launchHowto = Android::Content::Intent.new(self, HowToActivity)
      launchHowto.putExtra(HowToActivity::HOWTO_LAYOUT_EXTRA, R::Layout::Activity_howto_ar_programmatically)
    elsif v == @mAboutArFromCraftAR
      launchHowto = Android::Content::Intent.new(self, HowToActivity)
      launchHowto.putExtra(HowToActivity::HOWTO_LAYOUT_EXTRA, R::Layout::Activity_howto_ar_from_craftar)
    elsif v == @mAboutRecognitionOnly
      launchHowto = Android::Content::Intent.new(self, HowToActivity)
      launchHowto.putExtra(HowToActivity::HOWTO_LAYOUT_EXTRA, R::Layout::Activity_howto_recognition_only)
    end
    if launchHowto != nil
      startActivity(launchHowto)
      return
    end

    # Clicked on play links
    if v == @mArProgrammatically
      playExampleIntent = Android::Content::Intent.new(self, ARProgrammaticallyActivity)
    elsif v == @mArFromCraftAR
      playExampleIntent = Android::Content::Intent.new(self, ARFromCraftARActivity)
    elsif v == @mRecognitionOnly
      playExampleIntent = Android::Content::Intent.new(self, RecognitionOnlyActivity)
    end
    if playExampleIntent != nil
      startActivity(playExampleIntent)
      return
    end

    # Clicked on bottom links
    if (v == @mButtonCatchoom || v == @mButtonSignUp)
      url = if v == @mButtonSignUp
        "https://crs.catchoom.com/try-free?utm_source=CraftARExamplesApp&amp;utm_medium=Android&amp;utm_campaign=HelpWithAPI"
      else
        "http://catchoom.com/product/?utm_source=CraftARExamplesApp&amp;utm_medium=Android&amp;utm_campaign=HelpWithAPI"
      end
      launchWebView = Android::Content::Intent.new(self, WebActivity)
      launchWebView.putExtra(WebActivity::WEB_ACTIVITY_URL, url)
      startActivity(launchWebView)
      return
    end

  end

end