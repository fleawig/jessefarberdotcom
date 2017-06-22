module ApplicationHelper
  def black_bg_pages?(controller_path)
    if controller_path.include?('artist')
      true
    elsif controller_path.include?('admin')
      true
    elsif controller_path.include?('developer')
      true
    else
      false
    end
  end
end
