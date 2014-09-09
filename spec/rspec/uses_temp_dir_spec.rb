describe "uses temp dir" do
  include_context "uses temp dir"

  it "should create temp_dir" do
    expect(Pathname(temp_dir)).to be_exist
  end

  it "can create file in temp_dir" do
    temp_file = "#{temp_dir}/temp.txt"

    File.open(temp_file, "w") do |f|
      f.write("foo")
    end

    expect(File.read(temp_file)).to eq "foo"
  end

  describe "#temp_dir_path" do
    subject{ temp_dir_path }

    it { should be_an_instance_of Pathname }
    it { should be_exist }
  end
end
