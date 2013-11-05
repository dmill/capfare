require 'capybara/poltergeist'

module HeadlessBrowser
  include Capybara::DSL
  extend self

  def new_session
    Capybara.javascript_driver = :poltergeist

    Capybara.default_selector = :xpath

    @session = Capybara::Session.new(:poltergeist)

    @session.driver.headers = { 'User-Agent' =>
      "Mozilla/5.0 (Macintosh; Intel Mac OS X)" }

    @session
  end

  def html
    session.html
  end
end