class HttpController < ApplicationController

	def get
		render_params
	end

	def post
		render :json => params
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
		render :json => params
	end

end
