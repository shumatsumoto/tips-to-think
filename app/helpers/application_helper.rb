module ApplicationHelper
  def header_link_item(name, path, options = {})
    class_name = 'nav-item'
    class_name << ' active' if current_page?(path)

    content_tag :li, class: class_name do
      link_to name, path, options.merge(class: 'nav-link')
    end
  end
end
