class ApplicationController < ActionController::Base

  def after_sign_in_path_for(user)
    go_path(:create_group)
  end

  def redirect_to(options = {}, response_status = {})
    if params[:go_to].present?
      say "Go To param detected"
      super params[:go_to]
    else
      super(options, response_status)
    end
  end

  def say(message)
    @logger ||= Logger.new(STDOUT)
    @logger.info message
  end
end
