#require csv
require_relative "gossip"
require 'bundler'
Bundler.require


# commentaires sur la classe
class View
#  attr_accessor 

 def initialize
 end

 def create_gossip
  puts "Qui est l'auteur du gossip ?"
  author_to_save = gets.chomp
  puts "Quel est le contenu du gossip ?"
  content_to_save = gets.chomp
  params_h = {:content => content_to_save, :author => author_to_save}
  return params_h
 end

 def index_gossips(array)
    system "clear"
    puts "*"*60
    puts 
    array.length.times do |i|
      print "#{i} - "
      print array[i].author
      print " : "
      print array[i].content
      puts
    end
    puts
    puts "*"*60 
 end

 def destroy
    puts "Quel potin souhaites-tu supprimer ?"
    index_potin_a_supp = gets.chomp.to_i
 end

end
