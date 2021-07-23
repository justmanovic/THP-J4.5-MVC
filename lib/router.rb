#require csv
require 'bundler'
require_relative 'controller'
Bundler.require

class Router

  def initialize
   @controller = Controller.new

  end

  def effacer_un_gossip
    controller_gossip.effacer_un_gossip
  end

  def perform
    system "clear"
    while true
      puts "Que veux-tu faire ?\n1) Créer un gossip\n2) Afficher les gossips \n3) Supprimer un potin\n4) Quitter l'app"
      choice = gets.chomp.to_i
      case choice
      when 1
        @controller.create_gossip
      when 2
        @controller.index_gossips
      when 3
        @controller.destroy
      when 4
        puts ("*"*60).center(400)
        puts "Tu vas acheter GALA et VOICI ????????".center(400)
        puts "Ciao !".center(400)
        puts ("*"*60).center(400)
        break
      else
        puts "Ce choix n'existe pas !"
      end
    end
  end
end