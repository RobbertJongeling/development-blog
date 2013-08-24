module Jekyll

	class GithubLinker < Liquid::Tag			
		def	initialize(tag_name, repo, tokens)
			super
			@repo = repo.strip
		end
		
		def render(context)
			url = "\"http://github.com/" + @repo + "\""
			"<a href=" + url + ">" + @repo + "</a>"
		end
	end
end

Liquid::Template.register_tag('github', Jekyll::GithubLinker)