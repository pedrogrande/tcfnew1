# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://thecoderfactory.com"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
    add blog_path, :priority => 0.7, :changefreq => 'daily'
    # add web-development-and-javascript-courses_path, :changefreq => 'weekly'
    add about_path, :changefreq => 'weekly'
    add contact_path, :changefreq => 'weekly'
    add calendar_path, :changefreq => 'weekly'
  #
  # Add all articles:
  #
    Post.find_each do |post|
      add post_path(post), :lastmod => post.updated_at
    end

    User.find_each do |user|
      add user_path(user), :lastmod => user.updated_at
    end

    Course.find_each do |course|
      add course_path(course), :lastmod => course.updated_at
    end

    Event.find_each do |event|
      add event_path(event), :lastmod => event.updated_at
    end
end
