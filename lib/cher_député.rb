require 'nokogiri'
require 'open-uri'
require 'pry'
require 'rubocop'


def liste_deputes
 	doc = Nokogiri::HTML(URI.open('https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes'))

	prenom_nom_depute = Array.new
	email_depute = Array.new


	doc.xpath('//*[@class="titre_normal"]').each do |i|
		prenom_nom_depute << {"prénom" => i.text.split[1], "nom" => i.text.split[2]}
		email_depute << {"mail" => i.text.split[1] + "." + i.text.split[2] + "@assemblee-nationale.fr"}
	end
	return prenom_nom_depute
	return email_depute



array_final = Hash[prenom_nom_depute.zip(email_depute)]

end



liste_deputes