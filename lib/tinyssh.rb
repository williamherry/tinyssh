require "tinyssh/version"

module Tinyssh

  class Shell

    def initialize(cmd)
      @cmd = cmd
    end

    def cmd
      @cmd
    end

    def cmd=(cmd)
      @cmd = cmd
    end

    def run
      @cmd.nil? ? "" : `#{@cmd}`
    end

  end

end
