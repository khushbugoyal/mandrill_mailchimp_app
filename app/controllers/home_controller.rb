class HomeController < ApplicationController
  def index
  	debugger
  	InvitationMailer.invite().deliver
  end
end
