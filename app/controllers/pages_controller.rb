class PagesController < ApplicationController
  def home
  end
  def contact
  end
  def fetch
    FetchJob.perform_at(10.seconds.from_now)
  end
end
