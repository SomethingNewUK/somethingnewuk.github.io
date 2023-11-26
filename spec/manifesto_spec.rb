describe "manifesto" do

  it "should be included from submodule" do
    expect(File.exist?("_site/manifesto/index.html")).to eq true
  end

  it "should automatically create dropdown nav for policy pages" do
    File.open("_site/index.html") do |file|
      html = file.read
      expect(html).to have_tag 'a', text: "Communications", with: {href: "/manifesto/communications"}
    end
  end

end
