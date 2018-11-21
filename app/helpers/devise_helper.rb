# frozen_string_literal: true

module DeviseHelper
  # A simple way to show error messages for the current devise resource. If you need
  # to customize this method, you can either overwrite it in your application helpers or
  # copy the views to your application.
  #
  # This method is intended to stay simple and it is unlikely that we are going to change
  # it to add more behavior or options.
  def devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    # sentence = I18n.t("errors.messages.not_saved",
    #                   count: resource.errors.count,
    #                   resource: resource.class.model_name.human.downcase)

    sentence = 'Account not saved'
    html = <<-HTML
      <div class="alert alert-danger" role="alert">
        <button class="close" "aria-hidden"="true" "data-dismiss"="alert" type="button">&times;</button>
        <div id="error_explanation">
          <h4>#{sentence}</h4>
          <ul>#{messages}</ul>
        </div>
      </div>
    HTML

    html.html_safe
  end
end