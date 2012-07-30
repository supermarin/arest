class HttpController < ApplicationController

  def redirect
    redirect_to :action => :process_request
  end

  def process_request
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
    params.delete(:action)

    @output = {}
    @output[:params] = params
    @output[:method] = request.method
    @output[:headers] = request.headers.select {|k,v| k.match("^HTTP.*")}
  end

end
