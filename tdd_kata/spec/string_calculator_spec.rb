require "string_calculator"

describe StringCalculator do
  #We are using another describe block to describe the add class method. By convention, class methods are prefixed with a dot (".add"), and instance methods with a dash ("#add").
  describe ".add" do
    #We are using a context block to describe the context under which the add method is expected to return zero. context is technically the same as describe, but is used in different places, to aid reading of the code.
    context "given '4'" do
      #We are using an it block to describe a specific example, which is RSpec's way to say "test case". Generally, every example should be descriptive, and together with the context should form an understandable sentence. This one reads as "add class method: given an empty string, it returns zero".
      it "return '4'" do
        #expect(...).to and the negative variant expect(...).not_to are used to define expected outcomes. The Ruby expression they are given (in our case, StringCalculator.add("")) is combined with a matcher to fully define an expectation on a piece of code. The matcher we are using here is eql, a basic equality matcher.
        expect(StringCalculator.add("4")).to eql(4)
      end
    end

    context "given '10'" do
      it "return '10'" do
        expect(StringCalculator.add("10")).to eql(10)
      end
    end
    context "two numbers" do
      context "given '2,4'" do
        it "return '6'" do
          expect(StringCalculator.add('2,4')).to eql(6)
        end
      end
      context "given '17, 100'" do
        it "return '117'" do
          expect(StringCalculator.add("17,100")).to eql(117)
        end
      end
    end
  end
end
