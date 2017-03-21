class PostModel

  def self.all 

    # connect to postgres with PG gem
    conn = PG.connect(dbname: "blog")

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

    Post.new row['id'], row['name'], row['body']

  end

  def self.find id 

    # connect to postgres with PG gem
    conn = PG.connect(dbname: "blog")

    # load some data from the database
    conn.exec_params("SELECT * FROM post WHERE id =$1",[id]) 

    # hyrdate it

    # data = conn.exec_params("SELECT * FROM post WHERE id =$1",[id]) 
   
    # self.hyrdate data[0]


  end

  def self.delete id
       # load some data from the database
    conn = PG.connect(dbname: "blog")

    # run a raw sql query in postgres
      conn.exec_params("DELETE FROM post WHERE id= $1", [id]) 
        
  end

  def self.update id , post_name, post_body

    conn = PG.connect(dbname: "blog")

    # update the post in the database
    conn.exec("UPDATE post SET name = '#{post_name}', body ='#{post_body}' WHERE id = #{id}"); 

    puts "UPDATE post SET name = '#{post_name}', body ='#{post_body}' WHERE id = #{id}"

    

    # conn.exec_params("UPDATE post SET name =$2, body =$3 
    #   WHERE id = $1", [id, post_name, post_body]); 

  end

end