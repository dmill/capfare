require "headless_browser"

class KayakScraper

  def format_date(month, day, year = DateTime.now.year)
    "#{year}-#{month}-#{day}"
  end

  def format_airports(departure, arrival)
    "#{departure}-#{arrival}"
  end
end