class Highlight
  attr_accessor :name, :url

  def self.all
    [
      self.new(url: "http://www.youtube.com/watch?v=oi8tbjcWn9Y", name: "Hornets vs Blazers 12/16/2012"),
      self.new(url: "http://www.youtube.com/watch?v=cec4tWITR3E", name: "JJ Hickson dunk over DeAndre Jordan"),
      self.new(url: "http://www.youtube.com/watch?v=vRdbBpRLyHA", name: "Damian Lillard dunk on Nuggets"),
      self.new(url: "http://www.youtube.com/watch?v=TynfkbIgswQ", name: "LaMarcus Aldridge dunk on Andrew Bogut"),
      self.new(url: "http://www.youtube.com/watch?v=WEV0I8jPn9U", name: "Wesley Matthews drops 8 three-pointers")
    ]
  end

  def initialize(args={})
    args.each do |k,v|
      send("#{k}=", v) if respond_to?("#{k}=")
    end
  end
end