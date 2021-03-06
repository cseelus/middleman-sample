# Page options, layouts, aliases and proxies
# ---------------------------------------------------------------------

# Vars
set :site_title, 'hfuse'
set :site_url, 'https://www.hfuse.com/'

# Per-page layout changes:
#
# With no layout
page "/sitemap.xml", layout: false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

# Livereload gem
activate :livereload


# Helpers
# ---------------------------------------------------------------------------

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
helpers do
  def nav_active(page)
    if page_classes == page
      'active'
    elsif page_classes.include? page
      'semiactive'
    else
      ''
    end
  end
end


# Frontend
# ---------------------------------------------------------------------------


# Susy grids in Compass
require 'susy'

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Slim html
set :slim, pretty: true, sort_attrs: false, format: :html


# Build specific
# ---------------------------------------------------------------------------
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :cache_buster

  # Use relative URLs
  activate :relative_assets

  # Create favicon/touch icon set from source/favicon_base.png
  # activate :favicon_maker

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"

  # Pretty URLs
  # activate :directory_indexes
end
