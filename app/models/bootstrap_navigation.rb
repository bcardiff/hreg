class BootstrapNavigation < SimpleNavigation::Renderer::Base

  def initialize(options)
    options.merge! level: 1
    super(options)
  end

  def render(item_container)
    content_tag(:ul, li_tags(item_container).join, { id: item_container.dom_id, class: "#{item_container.dom_class} nav" })
  end

  protected

  def li_tags(item_container)
    item_container.items.inject([]) do |list, item|
      li_html_options = {}
      li_html_options[:class] = 'active' if item.selected?
      list << content_tag(:li, link_to(item.name, item.url, {method: item.method}.merge(item.html_options.except(:class,:id))), li_html_options)

      list
    end
  end
end