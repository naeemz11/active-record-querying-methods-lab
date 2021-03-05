# class Show<ActiveRecord::Base

#     def self.highest_rating
#         self.maximum(:rating)
#     end 

#     def self.most_popular_show

#         self.where("rating = ?", self.highest_rating).first
#     end 
      
#     def self.least_popular_show
        
#         self.minimum(:rating)

#     end

#     def self.ratings_sum
#         self.sum(:rating)
#     end 

#     def self.popular_shows
#         self.where("rating >= ?", 5)
#     end 

#     def self.shows_by_alphabetical_order
#         self.order(:name)
#     end 
       
# end 













class Show < ActiveRecord::Base
  
    def Show::highest_rating
      Show.maximum("rating")
    end
  
    def Show::most_popular_show
      Show.order(rating: :desc).first
    end
  
    def Show::lowest_rating
      Show.minimum("rating")
    end
  
    def Show::least_popular_show
      Show.order(rating: :asc).first
    end
  
    def Show::ratings_sum
      Show.sum("rating")
    end
  
    def Show::popular_shows
      Show.where("rating > 5")
    end
  
    def Show::shows_by_alphabetical_order
      Show.order(name: :asc)
    end
  end