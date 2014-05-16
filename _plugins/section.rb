module Jekyll
  class HeaderTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      header = @text
      html = "" 
      html += "<div class='col-sm-12'>"
      html += "<div class='page-header text-muted' style='margin-top:5px;'>"
      html += header
      html += "</div></div>"
      html
    end
  end
end

Liquid::Template.register_tag('section', Jekyll::HeaderTag)