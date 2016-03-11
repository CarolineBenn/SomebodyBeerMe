module BeersHelper


## But what about if it is 0, 0.5 or 4.5??

#  rating == *.5
#    rating.floor times do
#      <full star>
#    end  
#    1 times do 
#      <half star>
#    end
#    rating.anti_rating
#  end


def stars(rating)
  output = ""
  rating.floor.times { output << display_star }
    if (rating % 1) != 0 #is not a whole number
    output << display_half_star    
    (5 - rating.floor - 1).times { output << display_empty_star }
  else # is whole number
    (5 - rating.floor ).times { output << display_empty_star }
  end
  output.html_safe
end

  


def display_star
  "<i class='fa fa-star'></i> "
end

def display_half_star
  "<i class='fa fa-star-half-o'></i> "
end

def display_empty_star
  "<i class='fa fa-star-o'></i> "
end


end