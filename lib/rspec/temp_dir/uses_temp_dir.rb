require "tmpdir"
require "rspec"

(RSpec.respond_to?(:shared_context) ? RSpec : Object).shared_context "uses temp dir" do
  around do |example|
    Dir.mktmpdir("rspec-") do |dir|
      @temp_dir = dir
      example.run
    end
  end

  attr_reader :temp_dir
end
