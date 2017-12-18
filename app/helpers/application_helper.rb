module ApplicationHelper
  def material_icon(name, text = nil)
    tag = content_tag(:i, name, class: 'material-icons')
    tag += ' ' + text if text.present?
  end
end
