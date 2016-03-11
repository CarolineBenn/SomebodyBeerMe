module UsersHelper

  def avatar_by_id(user_id)
    image_tag User.find(user_id).photo
  end


end
