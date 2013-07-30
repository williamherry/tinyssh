require 'spec_helper'

describe Tinyssh do
  describe "Shell" do
    it "should return an instance of TinySSH::Shell" do
      tinyssh = Tinyssh::Shell.new
      tinyssh.should be_an_instance_of(Tinyssh::Shell)
    end
  end
end
