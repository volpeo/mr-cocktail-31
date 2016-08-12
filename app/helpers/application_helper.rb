module ApplicationHelper

  def yield_with_default(key, default)
    content_for?(key) ? content_for(key).squish : default
  end

  def bootstrap_class_for(flash_type)
    case flash_type
    when "notice" then "alert-success"
    when "alert" then "alert-danger"
    end
  end

end
