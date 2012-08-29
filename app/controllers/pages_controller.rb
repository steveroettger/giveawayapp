class PagesController < ApplicationController
  def main
    app_secret = '025b109fd4a5ff149981f792f118dd57'
    @signed_request = FBGraph::Canvas.parse_signed_request(app_secret, params[:signed_request])
  end
end
