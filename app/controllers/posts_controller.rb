require 'json'
class PostsController < ApplicationController
  def index
    @response = ApiHandler.new.get_posts
    @posts = JSON.parse(@response.body);
    # puts @posts

    @posts.each do |post|
      FetchJob.perform_async(post['title'],post['body'])
end

  end

  def show
  end
end

