# coding: utf-8
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
             "Well... if you come across a woman, and she looks exactly like me, and she displays *any* interest in you whatsoever as a man, that's the bad one.",
             "A long time ago you told me the cycle of hate has to end and the only way to end it is through love. It's a hard lesson to learn.",
             "Now I want some straight answers.",
             "Trust me, you don’t want to make me angry.",
             "You may be immortal but I can still do damage. How'd you like to spend eternity in five pieces?",
             "We all eventually become what we pretend we are.",
             "This love stuff is a real pain.",
             "You can't be in love with Joxer. He's ... well, he's Joxer.",
             "Mother, I am a lunatic with lethal combat skills.",
             "You let your pain kill you years ago.",
             "I gotta go to the bathroom. Are we done yet?",
             "Hey, I'm not the one with the fungus among us.",
             "Don't make me hurt you, Scabrielle.",
             "A warrior cannot ask these question in the heat of battle. When the kill is there, you have to take it.",
             "Well, when I say 'Don't mention it,' I mean... you can mention it.",
             "It's easy to preach peace when you live in heaven. Where I come from you gotta fight for what you believe in.",
             "I'm just a girl in search of a really good sword."]
    @result = qlist[rand(25)]
  end

  def posts
    @entries = Entry.all
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(params.require(:entry).permit(:title, :season, :episode,
                                   :response_to, :comment, :sources))
    if @entry.save
      redirect_to '/posts'
    else
      render 'posts'
    end
  end

end
