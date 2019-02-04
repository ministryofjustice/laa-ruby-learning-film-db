class FilmFormBuilder < ActionView::Helpers::FormBuilder

  delegate :content_tag, to: :@template

  def text_field(attribute, options = {})
    content_tag(:div, class: 'govuk-form-group') do
      options = {class: 'govuk-!-width-one-half govuk-input', 'aria-describedby'=> ''}
      label(attribute, class: 'govuk-label') + super(attribute, options)
    end
  end

end

