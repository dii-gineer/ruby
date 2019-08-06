class Blog

    @@all_posts =[]
    @@num_posts = 0
    
    def self.all
        @@all_posts
    end 
    def self.add(thing)
        @@all_posts << thing
        @@num_posts += 1
    end 

    def self.publish
        @@all_posts.each do |post|
            puts "Title: \n #{post.title}"
            puts "Content: \n #{post.content}"
            puts "Publish Date: \n #{post.published_at}"
        end
    end 
end 
            
class BlogPost <Blog 

    def self.create
        post = new
        puts "Please enter the title of the post"
        post.title = gets.chomp
        puts "Please enter the content"
        post.content = gets.chomp
        post.published_at = Time.now
        post.save
        puts "Do you want to create a new blog post? Y/N"
        create if gets.chomp.downcase == 'y'
    end

    def title
        @title
    end
    def title=(title)
        @title = title
    end

    def content=(content)
        @content=content
    end
    def content
        @content
    end
    def published_at=(published_at)
        @published_at=published_at
    end
    def published_at
         @published_at
    end

    def save
        BlogPost.add(self)
    end 

end

BlogPost.create
all_posts= BlogPost.all
puts all_posts.inspect
BlogPost.publish