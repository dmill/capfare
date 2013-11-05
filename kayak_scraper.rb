require "./headless_browser"

class KayakScraper
  include HeadlessBrowser

  def initialize(airports, departure_date, return_date)
    @airports = airports
    @departure_date = departure_date
    @return_date = return_date
    flights_page
  end


  def flights_page
    new_session
    visit "http://www.kayak.com/flights/#{@airports}/#{@departure_date}/#{@return_date}"
    sleep 90
    @flights_page =  Nokogiri::HTML(page.body)
  end

  def lowest_price
    @flights_page.css('a.results_price.bookitprice')[0].inner_html
  end
end