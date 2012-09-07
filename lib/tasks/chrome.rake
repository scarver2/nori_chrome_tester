namespace :chrome do
	desc 'Import Chrome data from sample XML file.'
	task import: :environment do

		puts 'Importing Chrome sample data ...'
		
		xml = IO.read('./db/chrome_xml_sample.xml')
    
    hashed = Nori.parse(xml)
    puts hashed.inspect
	end
end
