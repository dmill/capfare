CapFare
---------

Capfare is an application that will generate text message and email alerts when an airline fare for a flight on Kayak hits or dips below a minimum price by scraping data from kayak using nokogiri. Data will be scraped every 10 minutes to allow for a far more realtime price alert model than the one currently supplied on Kayak.

MVP
====
- User can enter a departing and arriving location
- User can specify round-trip or one-way
- User can specify departure date and return date
- User can specify a maximum price for above information
- Email notification when price is met
- Twilio API integration for sending text alerts