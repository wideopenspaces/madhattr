require 'madhattr'

class SampleObject
  extend HattrAccessor

  hattr_reader :options, :cat, :snake
  hattr_writer :options, :dog, :snake
  hattr_accessor :options, :bird

  def initialize(options = {cat: 1, dog: 2, bird: 'wut', snake: :no, dinosaur: 'extinct'})
    @options = options
  end
end