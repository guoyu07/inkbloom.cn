module ApplicationHelper

  def active_css(target_val, current_val)
    "active" if target_val == current_val
  end

end
