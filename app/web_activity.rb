class WebActivity < Android::App::Activity

  WEB_ACTIVITY_URL = "url"

  def onCreate savedInstanceState
      super
      setContentView(R::Layout::Activity_web)
      webView1 = findViewById(R::Id::Activity_web)
      webView1.getSettings().setSupportZoom(true)
      webView1.getSettings().setBuiltInZoomControls(true)
      if Android::OS::Build::VERSION::SDK_INT > 11
        webView1.getSettings().setDisplayZoomControls(false)

        webView1.setInitialScale(100)
        webView1.setWebViewClient(
          Android::Webkit::WebViewClient.new()
        )
      end

      bundle = getIntent().getExtras()
      webView1.loadUrl(
        bundle.getString(WEB_ACTIVITY_URL)
      )
    end

    def onClick v

    end

end