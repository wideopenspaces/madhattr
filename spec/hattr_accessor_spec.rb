require 'spec_helper'
require 'sample_object'

describe HattrAccessor do
  subject { SampleObject.new }

  context 'cat' do
    it 'has a reader' do
      subject.must_respond_to :cat
    end

    it 'does not have a writer' do
      subject.wont_respond_to :cat=
    end

    it 'returns the correct value when accessed' do
      subject.cat.must_equal(1)
    end
  end

  context 'dog' do
    it 'does not have a reader' do
      subject.wont_respond_to :dog
    end

    it 'has a writer' do
      subject.must_respond_to :dog=
    end

    it 'sets the correct value' do
      subject.dog = 5
      subject.options[:dog].must_equal 5
    end
  end

  context 'bird' do
    it 'has a reader' do
      subject.must_respond_to :bird
    end

    it 'has a writer' do
      subject.must_respond_to :bird=
    end

    it 'returns the correct value when accessed' do
      subject.bird.must_equal('wut')
    end

    it 'sets the correct value' do
      subject.bird = 'lol'
      subject.bird.must_equal('lol')
    end
  end

  context 'snake' do
    it 'has a reader' do
      subject.must_respond_to :snake
    end

    it 'has a writer' do
      subject.must_respond_to :snake=
    end

    it 'returns the correct value when accessed' do
      subject.snake.must_equal(:no)
    end

    it 'sets the correct value' do
      subject.snake = 0
      subject.snake.must_equal(0)
    end
  end

  context 'dinosaur' do
    it 'does not have a reader' do
      subject.wont_respond_to :dinosaur
    end

    it 'does not have a writer' do
      subject.wont_respond_to :dinosaur=
    end
  end
end