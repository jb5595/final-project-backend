class AnswersController < ApplicationController
  # skip_before_action :authorized, only: [:expert]

  def expert
    self.expert
  end

end
