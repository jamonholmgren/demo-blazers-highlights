class HighlightsScreen < ProMotion::TableScreen
  title "Blazers Highlights"

  def on_load
    set_tab_bar_item system_icon: UITabBarSystemItemFeatured
    set_nav_bar_right_button "About", action: :show_about_screen
  end

  def will_appear

  end

  def on_appear

  end

  def table_data
    [{
      title: "",
      cells: highlight_cells
    }]
  end

  def show_about_screen
    open AboutScreen
  end

  def highlight_cells
    @highlight_cells ||= begin
      highlights = Highlight.all
      cells = []

      highlights.each do |h|
        cells << {
          title: h.name,
          action: :launch_video,
          arguments: { url: h.url }
        }
      end

      cells
    end
  end

  def launch_video(args={})
    videos = HCYoutubeParser.h264videosWithYoutubeURL(NSURL.URLWithString(args[:url]))
    mp = MPMoviePlayerViewController.alloc.initWithContentURL(NSURL.URLWithString(videos["medium"]))
    open mp, modal: true
  end
end