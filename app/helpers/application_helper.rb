module ApplicationHelper
  def addresses addresses
    return unless addresses.present?

    if addresses.first.person_id.nil? || can_see_info(addresses.first.person_id)
      html = "<address>"
      addresses.each do |address|
        html << "#{address.address_1}#{address.address_2.present? ? ', ' : ''}#{address.address_2}<br>
                 #{address.city}, #{address.state} #{address.zip}<br>
                 <a href='http://maps.google.com/?q=#{address.address_1}#{address.address_2.present? ? ', ' : ''}#{address.address_2}, #{address.city}, #{address.state} #{address.zip}' target='_blank'>
                  <i class='fa fa-map-marker'></i>
                  View Map
                 </a><br>"
      end
      html << "</address>"
      raw html
    end
  end

  def emails emails, truncate_it: 0
    return unless emails.present?

    if emails.first.person_id.nil? || can_see_info(emails.first.person_id)
      html = "<ul class='list-unstyled' style='line-height: 1.5;'>"
      emails.each do |email|
        html << "<li>
                  <a href='mailto:#{email.email}'>
                    <i class='fa fa-envelope'></i>
                  </a>
                  #{truncate_it > 0 ? truncate(email.email, length: truncate_it) : email.email}
                </li>"
      end
      html << "</ul>"
      raw html
    end
  end

  def phones phones
    return unless phones.present?

    if phones.first.person_id.nil? || can_see_info(phones.first.person_id)
      html = "<ul class='list-unstyled' style='line-height: 1.5;'>"
      phones.each do |phone|
        html << "<li>
                    <a href='tel:#{phone.area_code}#{phone.phone_number}'>
                      <i class='fa fa-phone'></i>
                    </a>
                    #{number_to_phone("#{phone.area_code}#{phone.phone_number}", area_code: true)}
                </li>"
      end
      html << "</ul>"
      raw html
    end
  end

  def websites websites
    return unless websites.present?

    html = "<ul class='list-unstyled' style='line-height: 1.5;'>"
    websites.each do |website|
      url = website.url.start_with?('http') ? website.url : "http://#{website.url}"
      html << "<li>
                <a href='#{url}' target='_blank'>
                  <i class='fa fa-external-link'></i>
                </a>
                #{website.url}
              </li>"
    end
    html << "</ul>"
    raw html
  end
end
