class StaticPagesController < ApplicationController
  def about
  end

  def episodes
  end

  def characters
  end

  def contact
  end
 
  def quote
    qlist = ["I've just cut off the flow of blood to your brain. You'll be dead in 30 seconds unless you start talking.",
             "I have many skills.",
             "Listen not just to the sounds, but what's behind the sounds.",
             "You wanna switch? Fine. You kick butt and I'll take notes.",
             "Gabrielle, tell him... do the bard thing!",
             "I think it doesn't matter where we take a stand, as long as we make one.",
             "Warriors like us make our own fate.",
             "You put people on a pedestal, sooner or later they're going to fall.",
             "She knows more about wisdom and justice than you’ll ever know.",
             "Well... if you come across a woman, and she looks exactly like me, and she displays *any* interest in you whatsoever as a man, that's the bad one."]
    @result = qlist.shuffle.first
  end
end
