require 'feedzirra'

class IndexController < ApplicationController
  def index
    @feed = Feedzirra::Feed.fetch_and_parse("http://feeds.macrumors.com/MacRumors-All")  

    @feed2 = Feedzirra::Feed.fetch_and_parse("http://feeds.feedburner.com/theappleblog")

    @feed3 = Feedzirra::Feed.fetch_and_parse("http://feeds.feedburner.com/9To5Mac-MacAllDay")    
  end
end
