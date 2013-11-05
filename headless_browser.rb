require 'capybara/poltergeist'

module HeadlessBrowser
  include Capybara::DSL
  extend self

  def new_session
    Capybara.register_driver :poltergeist do |app|
      Capybara::Poltergeist::Driver.new(app)
    end
    Capybara.javascript_driver = :poltergeist
    Capybara.current_driver = :poltergeist
    Capybara.default_selector = :xpath

    @session = Capybara::Session.new(:poltergeist)

    @session.driver.headers = { 'User-Agent' =>
      "Mozilla/5.0 (Macintosh; Intel Mac OS X)" }

    @session
  end
end