module ApplicationHelper
  # Writes tag with IE version classes using IE conditional comments.
  def ie_tag(name = :body, attrs = {}, &block)
    attrs.symbolize_keys!
    haml_concat(raw("<!--[if lt IE 7]> #{ tag(name, add_css_class('ie6', attrs)) } <![endif]-->"))
    haml_concat(raw("<!--[if IE 7]>    #{ tag(name, add_css_class('ie7', attrs)) } <![endif]-->"))
    haml_concat(raw("<!--[if IE 8]>    #{ tag(name, add_css_class('ie8', attrs)) } <![endif]-->"))
    haml_concat(raw("<!--[if gt IE 8]><!-->"))
    haml_tag name, attrs do
      haml_concat("<!--<![endif]-->")
      block.call
    end
  end

  # Writes html tag with IE version classes.
  def ie_html(attrs={}, &block)
    ie_tag(:html, attrs, &block)
  end

  def navigate_to(identifier, body, url, html_options={})
    classes = html_options[:class] || []
    classes.split(" ") unless classes.is_a?(Array)
    classes << "active"

    if current_navigation_item?(identifier)
      html_options[:class] = classes
    end

    content_tag(:li, html_options) do
      link_to(body, url)
    end
  end

  def current_navigation_item?(identifier)
    @navigation_id.is_a?(Array) && @navigation_id.include?(identifier) || @navigation_id == identifier
  end

  def flash_messages
    [ :alert, :information, :notice ].map do |flash_type|
      if flash[flash_type].present?
        flash_message(flash_type, flash[flash_type])
      end
    end.join("\n").html_safe
  end

  private

  # Helper to modify CSS class string inside a hash.
  def add_css_class(name, attrs)
    classes = attrs[:class] || ''
    classes.strip!
    classes = ' ' + classes if !classes.blank?
    classes = name + classes
    attrs.merge(:class => classes)
  end
end
