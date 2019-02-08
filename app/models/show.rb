class Show < ActiveRecord::Base

  def Show::highest_rating
    Show.maximum("rating")
  end

  def Show::most_popular_show
    show = Show.where("rating=?", self.highest_rating)
    show.first
  end

  def Show::lowest_rating
    show = Show.minimum("rating")
    show.first
  end

end
