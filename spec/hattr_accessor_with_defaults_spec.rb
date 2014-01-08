require 'spec_helper'
require 'sample_object_with_defaults'

describe HattrAccessor do
  context 'when the source object exists' do
    subject { SampleObjectWithDefaults.new }

    context 'cat' do
      it 'has a reader' do
        subject.must_respond_to :cat
      end

      it 'does not have a writer' do
        subject.wont_respond_to :cat=
      end

      it 'returns the correct value when accessed' do
        subject.cat.must_equal(3)
      end
    end


    context 'snake' do
      it 'has a reader' do
        subject.must_respond_to :snake
      end

      it 'returns the correct value when accessed' do
        subject.snake.must_equal('never!!!')
      end

      it 'has a writer' do
        subject.must_respond_to :snake=
      end

      it 'sets the correct value' do
        subject.snake = 0
        subject.snake.must_equal(0)
      end
    end
  end
end