module KayakScraper

  def format_date(month, day, year = DateTime.now.year)
    "#{year}-#{month}-#{day}"
  end

end