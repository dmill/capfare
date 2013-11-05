module KayakScraper

  extend self

  def format_date(month, day, year = DateTime.now.year)
    "#{year}-#{month}-#{day}"
  end

  def format_airports(departure, arrival)
    "#{departure}-#{arrival}"
  end

end