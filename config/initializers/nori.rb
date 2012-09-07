Nori.parser = :nokogiri
Nori.strip_namespaces = true
Nori.configure do |config|
  config.convert_tags_to { |tag| tag.underscore.to_sym }
end
