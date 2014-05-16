require 'spec_helper'

describe Grimorium::Integration::Cucumber::Sentences do

  it "sifts goto step" do
    @evaluating = described_class::GOTO

    sifting('I go to the home page').should eq        ["home"]
    sifting('I go to the article new page').should eq ["article new"]
  end


  it "sifts proxy step" do
    @evaluating = described_class::PROXY

    sifting('I decide to buy some products').should eq                                   ["decide to", "buy some products", nil]
    sifting('I decide to add to cart an article with: name "Tha Book", qty 1').should eq ["decide to", "add to cart an article", 'name "Tha Book", qty 1']
    sifting('I should have an article in the basket').should eq                          ["should have an", "article in the basket", nil]
    sifting('I decide to checkout with: card 1234********9089').should eq                ["decide to", "checkout", "card 1234********9089"]
    sifting('I should not have any item in the basket').should eq                        ["should not have", "any item in the basket", nil]
  end


  it "sifts reload step" do
    @evaluating = described_class::RELOAD

    sifting('I reload the page').should eq ["I reload the page"]
  end


  def sifting(sentence)
    sentence.scan(@evaluating).flatten
  end
end