## basically what this file does is generate the window, and run it through a loop
## this is the environment that the game will run in
require 'rubygems'
require 'gosu'

class GameWindow < Gosu::Window
	def initialize
		super(640,480,false)
		self.caption = "Update/Draw Demo"
		@font = Gosu::Font.new(self, Gosu::default_font_name, 20)
		@counter = 0
	end

	def update
		@counter += 1
	end

	def draw
		@font.draw(@counter, 0, 0, 1)
	end

	def button_down(id)
		if id == Gosu::KbEscape
			close
		end
	end
end

window = GameWindow.new
window.show