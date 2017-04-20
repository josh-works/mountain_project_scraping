require 'rails_helper'

RSpec.describe WebScraper do

  it "knows an area to scrape" do

    golden = WebScraper.new
    results = golden.scrape_area("clear-creek-canyon/105744243")

    # 
    expect(results[:area]).to eq("Clear Creek Canyon ")
    expect(results[:getting_there].split(".")). to eq("From Denver, head out on 6th Ave")
  end


end
