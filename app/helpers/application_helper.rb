module ApplicationHelper
  def material_icon(name, text = nil)
    tag = content_tag(:i, name, class: 'material-icons')
    text.present? ? tag += ' ' + text : tag
  end
end
