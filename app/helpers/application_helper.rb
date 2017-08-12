module ApplicationHelper


  def markdown(text)
    options = {
      filter_html:     true,
      hard_wrap:       true,
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true,
      fenced_code_blocks: true
    }

    extensions = {
      autolink:           true,
      superscript:        true,
      disable_indented_code_blocks: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end


  def avatar_for(user, options = { size:50})
   	avatar_id = Digest::MD5::hexdigest(user.email).downcase
   	"https://seccdn.libravatar.org/avatar/#{avatar_id}.png?s=30"
   end


   def response_avatar_for(user, options = {size:50})
     avatar_id = Digest::MD5::hexdigest(user.email).downcase
    	"https://seccdn.libravatar.org/avatar/#{avatar_id}.png?s=50"
    end


    def headshot_for(user, options = {size:150})
      avatar_id = Digest::MD5::hexdigest(user.email).downcase
       "https://seccdn.libravatar.org/avatar/#{avatar_id}.png?s=150"
     end
end
