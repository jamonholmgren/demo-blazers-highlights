class AppDelegate < ProMotion::AppDelegateParent
  def on_load(app, options)
    open_tab_bar AboutScreen.new(nav_bar: true), HighlightsScreen.new(nav_bar: true)
  end
end
