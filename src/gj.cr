require "clim"

module Gj
  VERSION = "0.1.0"

  class Cli < Clim
    main do 
      desc "Say \"Good Job !\" to everyone."
      version "version: #{VERSION}", short: "-v"
      run do |opts, args|
        puts "Good Job #{args.all_args.join(", ")}!👍"
      end
    end
  end

  Cli.start(ARGV)
end

