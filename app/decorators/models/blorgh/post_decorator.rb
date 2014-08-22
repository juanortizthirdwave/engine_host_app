# Blorgh::Post.class_eval do
#   def time_since_created
#     Time.current - created_at
#   end
# end

# Blorgh::Post.class_eval do
#   def summary
#     "#{title} - #{truncate(text)}"
#   end
# end

class Blorgh::Post < ActiveRecord::Base
  include Blorgh::Concerns::Models::Post
 
  def time_since_created
    Time.current - created_at
  end
 
  def summary
    "#{title} - #{truncate(text)}"
  end
end