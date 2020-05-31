module StaticPagesHelper
	def full_title page_title =""
		base_title = "Ruby on Rails Tutorial Sample App"
		page_title.empty? ? base_title : "#{page_title} | #{base_title}"  
	end

	def base_url url =""
		base_url = "http://127.0.0.1:3000";
		url.empty? ? base_url : "#{base_url}/#{url}"
	end
end

