class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    self.includes(:boats => :classifications).where(:classifications => 
      {:name => :Catamaran}).uniq
  end

  def self.sailors
    self.includes(:boats => :classifications).where(:classifications =>
      {:name => :Sailboat}).uniq
  end

  def self.talented_seafarers
    
  end

  def self.non_sailors

  end

end
