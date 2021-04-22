require_relative '../lib/mairie_christmas'

describe "the mail_scrapper function" do
    it "should return an array" do
        expect(mail_scrapper).not_to be_nil
        expect(mail_scrapper).to be_a(Nokogiri::HTML::Document)
    end
end


