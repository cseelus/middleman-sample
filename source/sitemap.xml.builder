xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  xml.title @project_name + " Sitemap"
  xml.id @base_url
  xml.link "href" => @base_url
  xml.link "href" => @base_url + "sitemap.xml", "rel" => "self"

  pages = sitemap.resources.find_all{ |p| p.source_file.match(/\.html/) }
  pages.each do |p|
    xml.url do
      xml.loc @base_url + p.destination_path.gsub('index.html','')
      if priority = p.metadata[:page]['priority']
        xml.priority
      end
      xml.lastmod File.new(p.source_file).mtime.to_date
    end
  end
end
