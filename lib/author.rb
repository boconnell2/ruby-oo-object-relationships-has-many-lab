require 'pry'

class Author
    attr_accessor :name

    def initialize(name)
        @name = name 
    end

    def posts
        Post.all
    end

    def add_post(arg_post)
        arg_post.author = self
    end

    def add_post_by_title(post_title)
        new_post = Post.new(post_title)
        new_post.author = self
    end

    def self.post_count
        Post.all.count
    end

end
