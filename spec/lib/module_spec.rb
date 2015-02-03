require 'spec_helper'
require 'attr_combined_accessor'

RSpec.describe(Module) do
  describe('.attr_combined_accessor') do
    let(:test_class) do
      Class.new do
        attr_combined_accessor :foo, :bar
      end
    end
    subject { test_class.new }

    before do
      subject.instance_variable_set(:@foo, 'foo')
      subject.instance_variable_set(:@bar, 'bar')
    end

    it('adds a combined reader/writer method for each name specified') do
      expect(subject.respond_to?(:foo)).to be(true)
      expect(subject.respond_to?(:bar)).to be(true)
    end

    it('adds a writer method for each name specified') do
      expect(subject.respond_to?(:foo=)).to be(true)
      expect(subject.respond_to?(:bar=)).to be(true)
    end

    it('returns the value of the instance variable when the getter version of the combined method is called') do
      expect(subject.foo).to eql('foo')
    end

    it('sets the value of the instance variable when the setter version of the combined method is called') do
      subject.foo('more foo')

      expect(subject.instance_variable_get(:@foo)).to eql('more foo')
    end

    it('returns self for chaining when the writer version of the combined method is called') do
      expect(subject.foo('more foo')).to equal(subject)
    end
  end
end
