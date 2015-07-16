class HowToActivity < Android::App::Activity

  HOWTO_LAYOUT_EXTRA = "howto_layout"

  def onCreate savedInstanceState
    super
    layoutRes = getIntent().getExtras().getInt(HOWTO_LAYOUT_EXTRA)
    setContentView(layoutRes)
    linksView = findViewById(R::Id::Text_with_links_1)
    if linksView != nil
      linksView.setMovementMethod(
        LinkMovementMethod.getInstance()
      )
    end
  end

end