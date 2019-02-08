class Show < ActiveRecord::Base

  def Show::highest_rating
    Show.maximum
  end

end
