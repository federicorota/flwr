class WelcomeController < ApplicationController
  layout 'welcome'

  def index
    @page_title = 'Welcome!'

    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end
end
