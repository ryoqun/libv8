require 'spec_helper'
require 'compiler'

module Libv8::Compiler
  describe LCC do
    subject { LCC.new 'c++' }

    describe '#name' do
      it 'returns LCC' do
        expect(subject.name).to eq 'LCC'
      end
    end

    describe '#version' do
      it 'returns the version of the compiler' do
        stub_as_available 'c++', :lcc, '1.20.14'
        expect(subject.version).to eq '1.20.14'
      end
    end

    describe '#target' do
      it 'returns the target of the compiler' do
        stub_as_available 'c++', :lcc, '1.20.14'
        expect(subject.target).to eq '***-linux'
      end
    end

    describe '#compatible?' do
      it 'returns false' do
        stub_as_available 'c++', :lcc, '1.20.14'
        expect(subject).to_not be_compatible
      end
    end
  end
end
