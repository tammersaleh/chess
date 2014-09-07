require 'string_extensions'

describe "String#strip_leading_whitespace" do
  it "removes the shortest amount of initial whitespace" do
    string = <<EOS
  hey  
    hey
      hey 
EOS
    expected = <<EOS
hey  
  hey
    hey 
EOS
    expect(string.strip_leading_whitespace).to eq(expected)
  end
end
