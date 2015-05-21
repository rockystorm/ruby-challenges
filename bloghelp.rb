=begin 

DONE- Create a file in your ruby_challenges folder and title it blog.rb
Create a blog post object
Make sure to modify the initialize method so that a user can do important things like add a title and some content to their blog post (we talked about this in the previous lesson)
Make sure to save the time you created your blog post as an instance variable for each blog post instance.
Collect all those blog posts in a hash (you learned about these in lesson 7), HINT: you will want to learn about the store method – Ruby 1.9.3, Ruby 2.1.5.
Organize your blog posts by when you created them. Can you do it in ASC and DESC order?
Create a publish method that ‘puts’ all your blog posts. Would that be a class or instance method?
Maybe your blog posts should have authors?
Hmm, shouldn’t you be practicing inheritance? Let’s add a page object to this blog. How is it different than a blog post? How is it similar?

=end

class Blog
  attr_accessor :title, :archive, :totalPostsInArchive, :timeCreated, :timeCreatedInNano


  def initialize
    @timeCreated = Time.now
    puts "Name your blog:"
    @title = gets.chomp
    @archive = []
    @@totalPostsInArchive = 0
  end


  def createBlogPost
    newBlogPost = BlogPost.new
    puts "here is my new blog post"
    @archive << newBlogPost
    @@totalPostsInArchive += 1
  end


  def sortArchive
    @archiveSorted = @archive.sort!{|a,b| b.timeCreatedInNano <=> a.timeCreatedInNano}
  end


  def getArchive
    sortArchive
    return @archiveSorted
  end


  def publish( archive )
    archive.each do |blogPost|
      puts blogPost.title
      puts blogPost.timeCreated
      puts blogPost.content
      puts blogPost.author
    end
  end
end


class BlogPost
  attr_accessor :title, :timeCreated, :content, :author


  def initialize
    @timeCreated = Time.now
    @timeCreatedInNano = @timeCreated.nsec


    puts "Name your blog post:"
    @title = gets.chomp


    puts "Your blog post content:"
    @content = gets.chomp


    puts "Author name:"
    @author = gets.chomp
  end


end


myBlog = Blog.new
archive = myBlog.getArchive
firstBlogPost = myBlog.createBlogPost
mySecondBlogPost = myBlog.createBlogPost
puts myBlog.inspect
myBlog.publish(archive)

