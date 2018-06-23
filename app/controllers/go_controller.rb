class GoController < ApplicationController
  include Wicked::Wizard

  steps :create_group, :add_objectives, :invite_friends, :finish

  def show
    case step
    when :create_group
      @group = Group.new
    when :add_objectives
      @objective = Objective.new
    when :invite_friends
      @user = User.new
    when :finish
    end
    render_wizard
  end
end
