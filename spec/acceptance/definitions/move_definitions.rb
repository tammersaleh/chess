require "game"

step "a new game" do
  @game = Game.new
end

step "I move :from to :to" do |from, to|
  @game.move from, to
end

step "they move :from to :to" do |from, to|
  @game.move from, to
end
