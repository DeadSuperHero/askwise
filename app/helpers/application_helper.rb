module ApplicationHelper

  def avatar_for(user, options = { size:50})
   	avatar_id = Digest::MD5::hexdigest(user.email).downcase
   	"https://seccdn.libravatar.org/avatar/#{avatar_id}.png?s=30"
   end

end
