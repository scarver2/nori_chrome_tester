namespace :chrome do
	desc 'Import Chrome data from sample XML file.'
	task import: :environment do

		puts 'Importing Chrome sample data ...'
		
		xml = IO.read('./db/chrome_xml_sample.xml')
    
    hashed = Nori.parse(xml)
    p hashed
    
    puts "-" * 40
    
    # binding.pry
    # example data paths
    # hashed[:envelope][:body][:vehicle_description][:vin_description][:@vin]
    vin_description = hashed[:envelope][:body][:vehicle_description][:vin_description]
    puts "VIN: #{vin_description[:@vin]}"
    puts "Vehicle: #{vin_description[:@model_year]} #{vin_description[:@division]} #{vin_description[:@model_name]} #{vin_description[:@style_name]}"
	end
end
