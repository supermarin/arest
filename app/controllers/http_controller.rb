class HttpController < ApplicationController

	def get
		render_params
	end

	def post
		render_params
	end

	def put
		render_params
	end

	def head
		render_params
	end

	def patch
		render_params
	end

	def delete
		render_params
	end

	private

	def render_params
		params.delete(:controller)
		params[:method] = params.delete(:action).upcase
		render :json => params
	end

end
