require 'yaml'
require 'set'

module TagPageGenerator

  class TagPageGenerator < Octopress::Hooks::Site
    def pre_read(site)

      all_tags = Set.new
      Dir.glob(site.source + '/_posts/*.md') do |postname|
        File.open(postname) do |f|
          f.each_line do |line|
            if line =~ /tags: ./
              all_tags.merge(YAML.load(line[6..-1]))
              break
            end
          end
        end
      end

      all_tags_filenames = Set.new
      all_tags.each do |tag|
        tag_name = sanitize_filename(tag.downcase)
        all_tags_filenames.merge(["#{tag_name}.html"])
      end

      Dir.entries(site.config["tags_dir"]).each do |filename|
        next if filename == "." || filename == ".."
        if !all_tags_filenames.include?(filename)
          File.delete(site.config["tags_dir"] + "/#{filename}")
        end
      end
      
      all_tags.each do |tag|
        tag_name = sanitize_filename(tag.downcase)
        if not File.exist?(site.config["tags_dir"] + "/#{tag_name}.html")
          f = File.new(site.config["tags_dir"] + "/#{tag_name}.html", 'w')
          f.puts("---")
          f.puts("group: blog")
          f.puts("layout: blog")
          f.puts("class: blog")
          f.puts("permalink: /blog/tag/#{tag_name}/")
          f.puts("tag: #{tag}")
          f.puts("title: #{tag}")
          f.puts("description: All blog posts published under #{tag} tag")
          f.puts("paginate:")
          f.puts("  collection: posts")
          f.puts("  per_page: 5")
          f.puts("  limit: false")
          f.puts("  permalink: '/page/:num/'")
          f.puts("  reversed: false")
          f.puts("  tag: '#{tag}'")

          f.puts("---")
          f.puts("\n{\% include tag.html %}")
          f.close
        end
      end
    end

    def sanitize_filename(filename)
      fn = filename.split /(?<=.)\.(?=[^.])(?!.*\.[^.])/m
      fn.map! { |s| s.gsub /[^a-z0-9\-]+/i, '-' }
      return fn.join '.'
    end
  end

end