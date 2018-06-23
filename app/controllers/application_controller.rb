class ApplicationController < ActionController::Base
  def redirect_to(options = {}, response_status = {})
    if params[:go_to].present?
      say "Go To param detected"
      redirect_to params[:go_to]
    else
      super(options, response_status)
    end
  end

  def say(message)
    @logger ||= Logger.new(STDOUT)
    @logger.info message
  end
end
