require "pg"

class PostModel

  def self.all

    # connect to postgres with PG gem
    conn = PG.connect(dbname: "blog")

    # array of posts
    posts = []

    # run a raw sql query in postgres
    rows = conn.exec("SELECT * FROM post")
        # take the raw data and hydrate the models
        rows.each do |row|
          posts.push PostModel.hydrate row
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
    conn = PG.connect(dbname: "blog")

    posts = []

    # run a raw sql query in postgres
      rows = conn.exec_params("SELECT * FROM post WHERE id= $1", [id])
              # take the raw data and hydrate the models
          rows.each do |row|
            posts.push row
          end


     # return the hyrdated objects
    posts

    # hyrdate it
  end


  def self.delete id

       # load some data from the database
    conn = PG.connect(dbname: "blog")

    # run a raw sql query in postgres
    rows = conn.exec_params("DELETE FROM post WHERE id= $1", [id])


  end

  def self.update id , post

    # update the post in the database

  end

end
