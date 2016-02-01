module MeetingsDirectoryHelper
  def meetings_directory(options = {})
    react_component(
      'MeetingsDirectory',
      filter: serialized_filters(options[:filter]),
      filterUrl: meetings_url,
      meetings: serialized_meetings(options[:meetings]),
      districts: Proposal::DISTRICTS,
      categories: serialized_categories,
      subcategories: serialized_subcategories
    )
  end

  def meetings_map(meetings)
    react_component(
      'MeetingsMap', 
      meetings: serialized_meetings(meetings)
    )
  end

  def serialized_meetings(meetings)
    meetings.map do |meeting|
      {
        id: meeting.id,
        slug: meeting.slug,
        title: meeting.title,
        description: meeting.description,
        address: meeting.address,
        address_latitude: meeting.address_latitude,
        address_longitude: meeting.address_longitude,
        held_at: l(meeting.held_at),
        start_at: meeting.start_at.present? ? l(meeting.start_at) : nil,
        end_at: meeting.end_at.present? ? l(meeting.end_at) : nil
      }
    end
  end
end
