module ApplicationHelper
  def nopic_bg_pages?(controller_path)
    if controller_path.include?('artist')
      true
    elsif controller_path.include?('admin')
      true
    elsif current_page?(developer_portfolio_path)
      true
    else
      false
    end
  end
end
