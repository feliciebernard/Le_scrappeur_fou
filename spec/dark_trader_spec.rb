require_relative '../lib/dark_trader'

describe "the dark trader function" do
    it "should return an answer" do
        expect(scrapper).not_to be_nil
        expect(scrapper).to be_a(Nokogiri::HTML::Document)
    end
end

