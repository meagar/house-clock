module ApplicationHelper

  def stylesheet_cache_path(*paths)
    tags = stylesheet_link_tag(*paths)
    tags.scan(/href="(.*?)"/).map do |match|
      match[0].html_safe
    end.join("\n")
  end

  def javascript_cache_path(*paths)
    tags = javascript_include_tag(*paths)
    tags.scan(/src="(.*?)"/).map do |match|
      match[0].html_safe
    end.join("\n")
  end

  def asset_cache_path(path)
    asset_path(path)
  end
end
