module ApplicationHelper
  def photo_helper(photo)
    photo.present? ? photo.thumb.url : "http://placehold.it/350x350"
  end

  def flash_class(type)
    case type
    when "notice" then "alert alert-warning"
    when "success" then "alert alert-success"
    when "error" then "alert alert-danger"
    when "alert" then "alert alert-danger"
    end
  end
end
