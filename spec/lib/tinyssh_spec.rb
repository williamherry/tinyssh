require 'spec_helper'

describe Tinyssh do

  describe "Shell" do

    it "should return an instance of TinySSH::Shell" do
      tinyshell = Tinyssh::Shell.new('')
      tinyshell.should be_an_instance_of(Tinyssh::Shell)
    end

    it "should have cmd that will run on server" do
      tinyshell = Tinyssh::Shell.new('ls')
      tinyshell.cmd.should == 'ls'
    end

    it "should respond to run method" do
      tinyshell = Tinyssh::Shell.new('ls')
      tinyshell.should respond_to(:run)
    end

    it 'should run command and return correct result' do
      tinyshell = Tinyssh::Shell.new('uname')
      result = tinyshell.run
      result.should include('Linux')
    end

  end
end
