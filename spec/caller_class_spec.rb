require 'spec_helper'

describe CallerClass do
  context 'call from the body of a class definition' do
    let(:a) do
      class A
        extend CallerClass

        caller_class
      end
    end

    it { expect(a).to eq('A') }
  end

  context 'call from the body of a nested class definition' do
    let(:b) do
      class B
        class BB
          extend CallerClass

          caller_class
        end
      end
    end

    it { expect(b).to eq('BB') }
  end

  context 'call from extended class' do
    let(:c) do
      module C
        include CallerClass

        def c
          caller_class
        end
      end

      class CC
        extend C

        c
      end
    end

    it { expect(c).to eq('CC') }
  end

  context 'call from module' do
    let(:d) do
      module D
        extend CallerClass

        caller_class
      end
    end

    it { expect(d).to be_nil }
  end
end
