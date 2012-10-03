class PagesController < ApplicationController
  def main
    @contestant = Contestant.new
  end
end
