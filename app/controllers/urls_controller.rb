class UrlsController < ApplicationController
  
  def index
    @url = Url.new
  end

  def create
    @url = Url.create(params[:url])
    render :json => {:data => @url.short_url, :status => "success"}
    render :json => {:partial => render 'some_view', :status => 'success'}
    # create new
  end

  def show
    @url = Url.find_by_short_url(params[:short_url])
    redirect @url.long_url
    # show individual
  end

  def delete
    # delete individual
  end


end
