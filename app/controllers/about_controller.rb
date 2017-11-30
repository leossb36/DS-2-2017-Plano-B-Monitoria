class AboutController < ApplicationController
  def show
    render template: "about/#{params[:about]}"
  end
end
