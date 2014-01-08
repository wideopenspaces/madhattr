require 'madhattr'

class SampleObjectWithDefaults
  extend HattrAccessor

  hattr_readers_with_defaults :options, cat: 3, snake: 'never!!!'
  hattr_writer :options, :dog, :snake
  hattr_accessor :options, :bird, :aardvark

  def initialize(options = {dog: 2, bird: 'wut', dinosaur: 'extinct'})
    @options = options
  end
end