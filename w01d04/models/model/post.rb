class PostModel

  def self.all

    # connect to postgres with PG gem
    conn = PG.connect("blog")

    # array of posts
    posts = []

    # run a raw sql query in postgres
    conn.exec("SELECT * FROM post") do |rows|
        # take the raw data and hydrate the models
        rows.each do |row|
          posts.push PostModel.hydrate row
        end
    end

    # return the hyrdated objects
    posts

  end

  # hydrate the objects
  def self.hydrate row

    Post.new row['name'], row['body']

  end

  def self.find id

    # load some data from the database

    # hyrdate it

  end

  def self.delete id

    # delete the row from the database

  end

  def self.update id , post

    # update the post in the database

  end

end
