#!/usr/bin/env ruby
require 'uri'
require 'cgi'

def prepare_uri(search)
  search = CGI.escape(search)

  search_uri = URI.parse('http://www.pik.ba/?sort_order=ASC&sort_po=cijena')
  search_uri.query += "&trazilica=#{search}"
  search_uri
end

print "Unesite pojam za pretragu: "
search = gets.chomp

uri = prepare_uri(search)
puts "URL za pretragu je #{uri.to_s}"
