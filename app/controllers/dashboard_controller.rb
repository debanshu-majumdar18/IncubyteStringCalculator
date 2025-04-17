class DashboardController < ApplicationController
  def index
    @result = nil
  end

  def get_result
    #done to handle escaped backslash, when taking input from form
    numbers = params[:numbers].to_s.gsub("\\n", "\n")
    @result = StringCalculator.add(numbers)

    render :index
  end
end
