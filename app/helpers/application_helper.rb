module ApplicationHelper
  def categories_for_kind(kind)
    Category.visible.where(category_kind: kind, parent_id: nil).includes(children: { children: { children: { children: :children } } })
  end

  def channel_path(kind, options = {})
    case kind.to_s
    when 'a' then a_channel_path(options)
    when 'b' then b_channel_path(options)
    when 'c' then c_channel_path(options)
    else categories_path(options)
    end
  end
end
