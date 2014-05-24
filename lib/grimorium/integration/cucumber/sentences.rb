module Grimorium
  module Integration
    module Cucumber
      module Sentences

        GOTO   = /^I (go to|am in) the (.*?) page(?: with: (.*)|$)/
        PROXY  = /^I (decide to|should(?: not)? have(?: an| a)?) (.*?)(?: with: (.*)|$)/
        RELOAD = /^I reload the page$/
      end
    end
  end
end