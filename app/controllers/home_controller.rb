class HomeController < ApplicationController

  def index
  	InvitationMailer.invite().deliver
  end
  
end
