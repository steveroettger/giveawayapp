class PagesController < ApplicationController
  def main
    app_secret = 'add3ad768bdb7760b76721943f393814'
    @signed_request = FBGraph::Canvas.parse_signed_request(app_secret, params[:signed_request])
  end
end
