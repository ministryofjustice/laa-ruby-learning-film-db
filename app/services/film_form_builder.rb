class FilmFormBuilder < ActionView::Helpers::FormBuilder

  delegate :content_tag, to: :@template

  def text_field(attribute, options = {})
    content_tag(:div, class: 'govuk-form-group') do
      label_text = options.delete(:label)
      text_field_options = {class: 'govuk-!-width-one-half govuk-input', 'aria-describedby'=> ''}.merge(options)
      label_html = label(attribute, label_text, class: 'govuk-label')
      text_field_html = super(attribute, text_field_options)
      label_html + text_field_html
    end
  end


  def submit(button_text = nil, options ={})
    content_tag(:button, class: 'govuk-button') do
      button_text || "Save"
    end
  end
end

