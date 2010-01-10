require File.join(File.dirname(__FILE__), '..', 'lib', 'cal', 'cal')

describe Cal do
  it "#initialize" do
    cal = Cal.new File.join(File.dirname(__FILE__), 'fixtures', 'sample.png')
    #cal.image_file.should == 'fixtures/sample.png'
  end
  it "should output a PDF document" do
    cal = Cal.new File.join(File.dirname(__FILE__), 'fixtures', 'sample.png')
    cal.output.should_not be_nil
  end
end

# cal = Cal.new 'test.jpg'
# cal.output #=> PDF
