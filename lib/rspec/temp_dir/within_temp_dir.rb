require "rspec"

RSpec.shared_context "within temp dir" do
  include_context "uses temp dir"

  around do |example|
    Dir.chdir(temp_dir) do
      example.run
    end
  end
end
