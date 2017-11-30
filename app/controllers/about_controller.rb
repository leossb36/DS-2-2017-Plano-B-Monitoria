class AboutController < ApplicationController

	def index
		@users = User.all
	end
end
