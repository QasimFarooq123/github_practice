# frozen_string_literal: true

# application_controller.rb
class ApplicationController < ActionController::Base
  before_action :show_message
  after_action :after_message

  private

  def show_message
    puts 'before action message'
  end

  def after_message
    puts '======================================'
    puts 'after action message'
  end
end
