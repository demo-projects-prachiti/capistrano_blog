class PostSweeper < ActionController::Caching::Sweeper
  observe Post

  def after_save(record)
    post = record.is_a?(Post) ? record : record.post
    # expire_page(controller: "lists", action: %w( show), id: post.id)
    expire_action(controller: "posts", action: "index")
    # post.shares.each { |share| expire_page(controller: "lists", action: "show", id: share.url_key) }
  end
end