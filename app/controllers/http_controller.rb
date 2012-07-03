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
		prepare_output
		respond_to do |wants|
			wants.json { render :json => @output }
			wants.xml { render :xml => @output }
		end
	end

	def prepare_output
		params.delete(:controller)
		params.delete(:format)
		@output = {}
		@output[:method] = params.delete(:action).upcase
		@output[:params] = params
	end

end
