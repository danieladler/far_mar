class FarMar::Base

  def initialize (attrs)

  end

  def read_file
    "class needs to be defined in order to read file"
  end

  def self.all
    @all ||= self.read_file.map {|x| self.new(x)}
  end

  def self.find (id)
    self.all.find {|x| x.id == id}
  end
end
