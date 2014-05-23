require 'spec_helper'

describe Grimorium::Configuration do

  before :each do
    @config = Grimorium::Configuration.new
  end


  it "lazy defines configuration object" do
    Grimorium.configuration.should be_a(Grimorium::Configuration)
  end


  it "defines default values" do
    @config.cucumber_sentence_subject.should eq 'I'
  end


  it "can be configured" do
    Grimorium.stubs(:configuration).returns @config

    Grimorium.configure do |config|
      config.cucumber_sentence_subject = 'She'
    end

    Grimorium.configuration.cucumber_sentence_subject.should eq 'She'
  end
end