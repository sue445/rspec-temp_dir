require "rbconfig"

describe "within temp dir" do
  include_context "within temp dir"

  it "within temp dir" do
    expect(current_dir).to eq temp_dir
  end

  def current_dir
    dir = Dir.pwd

    case RbConfig::CONFIG["host_os"]
    when /darwin|mac os/
      # FIXME: `Dir.mktmpdir` returns "/var/folders/xxx", but `pwd` returns "/private/var/folders/xxx" ...
      dir.gsub!(%r{^/private/}, "/")
    end

    dir
  end
end
