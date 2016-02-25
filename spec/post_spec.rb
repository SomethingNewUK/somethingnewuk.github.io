describe "posts" do
  
  it "should have a url under /news with the date" do
    expect(File.exists?("_site/news/2016/02/20/euref-yes-to-europe.html")).to eq true
  end
  
  it "should list multiple author names" do
    File.open("_site/news/2016/02/20/euref-yes-to-europe.html") do |file|
      html = file.read
      expect(html).to have_tag 'div', text: /Philip John/, with: {class: "byline"}
      expect(html).to have_tag 'div', text: /Ed Caplen/ , with: {class: "byline"}
    end
  end

  it "should include date in byline" do
    File.open("_site/news/2016/02/20/euref-yes-to-europe.html") do |file|
      html = file.read
      expect(html).to have_tag 'div', text: /20 February 2016/ , with: {class: "byline"}
    end
  end

end