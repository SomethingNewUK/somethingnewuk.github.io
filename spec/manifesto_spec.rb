describe "manifesto" do
  
  it "should be included from submodule" do
    expect(File.exists?("_site/manifesto/index.html")).to eq true
  end
  
  it "should automatically create dropdown nav for policy pages" do
    File.open("_site/index.html") do |file|
      html = file.read
      expect(html).to have_tag 'a', text: "Communications", with: {href: "/manifesto/communications"}
    end
  end

  it "should generate a TOC for each page" do
    File.open("_site/manifesto/communications.html") do |file|
      html = file.read
      expect(html).to have_tag 'a', text: "Internet Freedom", with: {href: "#internet-freedom"}
    end
  end

end