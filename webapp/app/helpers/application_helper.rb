module ApplicationHelper

  def nav_link(name, path)
    content = link_to name, path
    if current_page? path
      content_tag :li, content, class: 'active'
    else
      content_tag :li, content
    end
  end

end
