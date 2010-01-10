require "rubygems"
require 'open3'
require 'prawn'

class Cal
  attr_accessor :image_file
  def initialize(_image_file)
    #self.image_file = _image_file
    @image_file = _image_file
  end
  
  def output
    pdf = Prawn::Document.new
    pdf.image self.image_file, :width => 256, :height => 256
    Open3.popen3('cal') do |stdin, stdout, stderr|
       stdin.close
       pdf.text(stdout.read)
    end
    pdf.render
  end
end