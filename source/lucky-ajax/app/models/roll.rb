# Simple table that represents the roll of a 6-sided die

class Roll < ActiveRecord::Base
  attr_accessible :value

  validates :value, :inclusion => { :in => (1..6), :message => "must be between 1 and 6" }

  after_initialize :roll_if_value_is_nil

  private
  # If the user passes-in a "value", let's use it. Otherwise, we'll generate a random one.
  def roll_if_value_is_nil
    self.value = (rand(6) + 1) unless self.value?
  end

end
