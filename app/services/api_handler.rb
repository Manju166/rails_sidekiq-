require 'httparty'

class ApiHandler
    include HTTParty
    base_uri 'https://jsonplaceholder.typicode.com'
    
def initialize
    @options = {}
end

def get_posts
    self.class.get('/posts', @options)
end
end

