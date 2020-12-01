# frozen_string_literal: true

require 'spec_helper'
require 'attr_combined_accessor'

RSpec.describe(Module) do
  describe('.attr_combined_accessor') do
    subject(:test_class) do
      Class.new do
        attr_combined_accessor :foo, :bar
      end.new
    end

    before do
      test_class.instance_variable_set(:@foo, 'foo')
      test_class.instance_variable_set(:@bar, 'bar')
    end

    it('adds a combined reader/writer method for foo') do
      expect(test_class.respond_to?(:foo)).to be(true)
    end

    it('adds a combined reader/writer method for bar') do
      expect(test_class.respond_to?(:bar)).to be(true)
    end

    it('adds a writer method for foo') do
      expect(test_class.respond_to?(:foo=)).to be(true)
    end

    it('adds a writer method for bar') do
      expect(test_class.respond_to?(:bar=)).to be(true)
    end

    it('returns the value of the instance variable when the getter version of the combined method is called') do
      expect(test_class.foo).to eql('foo')
    end

    it('sets the value of the instance variable when the setter version of the combined method is called') do
      test_class.foo('more foo')

      expect(test_class.instance_variable_get(:@foo)).to eql('more foo')
    end

    it('returns self for chaining when the writer version of the combined method is called') do
      expect(test_class.foo('more foo')).to equal(test_class)
    end
  end
end
