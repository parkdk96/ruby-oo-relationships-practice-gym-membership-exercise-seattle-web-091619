class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def signup(gym, cost)
    Membership.new(cost, gym, self)
  end

  def gyms
    memberships.map { |membership| membership.gym }
  end

  def self.average_total
    @@all.sum {|lifter| lifter.lift_total} / @@all.length.to_f
  end

  def self.total_cost(specific_lifter)
    specific_lifter_memberships = @@all.find { |lifter| lifter == specific_lifter }.memberships
    specific_lifter_memberships.sum { |lifters_membership| lifters_membership.cost }
  end

  def self.all
    @@all
  end
end
