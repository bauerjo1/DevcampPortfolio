module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
    before_filter :set_defaults
  end
  
  def set_defaults
    @page_title = "DevcampPortfolio | My Portfolio Website"
    @seo_keywords = "Jordan Hudgens portfolio"
  end
end