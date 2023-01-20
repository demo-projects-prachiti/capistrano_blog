class PostObserver < ActiveRecord::Observer
  def after_save(post)
    puts "The post has been saved"
    # Notifications.comment("admin@do.com", "New comment was posted", comment).deliver
  end
end