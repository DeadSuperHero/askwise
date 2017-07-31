class PageController < ApplicationController

  def show
    render template: "page/#{params[:page]}"
  end

end
