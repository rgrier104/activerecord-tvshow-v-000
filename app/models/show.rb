class Show < ActiveRecord::Base

  def Show::highest_rating
    Show.maximum("rating")
  end

  def Show::most_popular_show
    show = Show.where("rating=?", self.highest_rating)
    show
  end

end
