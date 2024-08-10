class FetchJob
  include Sidekiq::Job

  def perform(*args)
    puts "hello world"
    # Do something
  end
end
