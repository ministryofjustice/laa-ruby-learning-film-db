class FilmFormBuilder < ActionView::Helpers::FormBuilder

  delegate :content_tag, to: :@template

  def text_field(attribute, options = {})
    content_tag(:div, class: 'govuk-form-group') do
      options = {class: 'govuk-!-width-one-half govuk-input', 'aria-describedby'=> ''}
      label_html = label(attribute, class: 'govuk-label')
      text_field_html = super(attribute, options)
      label_html + text_field_html
    end
  end

end

