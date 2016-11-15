module SpectacleEventsHelper
  def format_spectacle_event_date(event)
    format_start_date = "%d %B %Y"
    if event.custom_date.present?
      event.custom_date
    elsif event.end_date.present? and event.end_date.to_date == event.start_date.to_date + 1.day
      "#{t(:date_from_and)} <span class='date'>#{l(event.start_date, :format => "%d")}</span> #{t(:date_and)} <span class='date'>#{l(event.end_date, :format => '%d %B %Y')}</span>".html_safe
    elsif event.end_date.present? and event.end_date.to_date > event.start_date.to_date
      if event.start_date.year == event.end_date.year
        format_start_date = "%d %B"
        if event.start_date.month == event.end_date.month
          format_start_date = "%d"
        end
      end
      "#{t(:date_from)} <span class='date'>#{l(event.start_date, :format => format_start_date)}</span> #{t(:date_from_to)} <span class='date'>#{l(event.end_date, :format => '%d %B %Y')}</span>".html_safe
    else
      l(event.start_date, :format => format_start_date)
    end
  end
end
