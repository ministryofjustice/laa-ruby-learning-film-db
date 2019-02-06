module ApplicationHelper

  def html_title
    default = t('shared.page-title.suffix')
    return default unless content_for?(:page_title)

    "#{content_for(:page_title)} - #{default}".html_safe
  end
end
