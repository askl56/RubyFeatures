class Player

  attr_accessor :name, :progress

  def initialize(name)
    @name = name
  end
end

# [1] pry(main)> player = Player.new(name: "Andrew", progress: 300)
# => #<Player:0x007fd4a6851510 @name={:name=>"Andrew", :progress=>300}>

# [2] pry(main)> output = Marshal.dump(player)
# => "\x04\bo:\vPlayer\x06:\n@name{\a:\tnameI\"\vAndrew\x06:\x06ET:\rprogressi\x02,\x01"

# [3] pry(main)> puts output
# o:
#   Player:
# @name{: nameI"
# progressi,    Andrew:ET:
# => nil

# [4] pry(main)> new_player = Marshal.load(output)
# => #<Player:0x007fd4a243a818 @name={:name=>"Andrew", :progress=>300}>
