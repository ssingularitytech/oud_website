# app/helpers/application_helper.rb
module ApplicationHelper
  def add_target_blank_to_links(html)
    # parse the HTML
    fragment = Loofah.fragment(html)

    fragment.css('a').each do |link|
      link['target'] = '_blank'
      link['rel'] = 'noopener'
    end

    fragment.to_s.html_safe
  end
end
