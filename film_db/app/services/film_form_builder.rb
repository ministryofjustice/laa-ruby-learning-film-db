class FilmFormBuilder < ActionView::Helpers::FormBuilder

  delegate :content_tag, to: :@template

  def text_field(attribute, options = {})
    content_tag(:div, class: 'govuk-form-group') do
      label(attribute, class: 'govuk-label') + super
    end
  end

end

