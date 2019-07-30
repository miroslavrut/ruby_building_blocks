require './lib/caesar_cipher'

RSpec.describe "#caesar_cipher" do
  it "returns word with characters shifted by given key." do
    expect(caesar_cipher("ruby",1)).to eql("svcz")
  end

  it "returns word with characters shifted by negative key" do
    expect(caesar_cipher("ruby",-5)).to eql("mpwt")
  end

  it "returns multiple words and ignores spaces" do
    expect(caesar_cipher("hello mark", 2)).to eql("jgnnq octm")
  end

  it "returns word with characters shifted by factor greater than 26, wraps over z" do
    expect(caesar_cipher("dazzled", 10)).to eql("nkjjvon")
  end

  it "returns word with characters shifted by factor less than -26, wraps over a" do
    expect(caesar_cipher("apple", -4)).to eql("wllha")
  end

  it "returns word with characters shifterd by given key and ignores punctuation" do
    expect(caesar_cipher("kill me, plz!", 240 )).to eql("qorr sk, vrf!")
  end

end
