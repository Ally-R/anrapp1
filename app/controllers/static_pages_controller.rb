# coding: utf-8
class StaticPagesController < ApplicationController
  def about
  end

  def episodes
    @seasons = [1, 2, 3, 4, 5, 6]
  end

  def characters
    @characters = {"Xena" => "",
                   "Gabrielle" => "While we all love Xena, no one can deny the absolutely incredible character arc and development of [spoilers] The Great Battling Bard herself, Gabs. Throughout all of Xena, many of the main and recurring characters evole and change, but none compare to the transformation of Gabrielle. Starting as a little girl from the small village of Poteidaia, Gabrielle has always been stikingly bold and brave, and itching for adventure. Her moral compass was ture, heart full of compassion and acceptance. But her young, energetic self knew nothing of war, loss, or taking a life. The plot in early seasons hinged upon her \"blood innocence\", first through her learning from Xena about dangers of wielding a sword and the burden of killing, then through the pain of being forced to do so. The wound of that loss cuts so deep, among other aspects of how it happened, that it leads the show into perhaps its darkest and most emotionally heavy arc. Then, coming out of this arc, Gabrielle enters her journey as a warrior. This marks a distinct moment: after stabalizing from that deep trauma, Gabrielle emerges as someone distinctly different than her previous self, one that the audience must work to get to know over time, but also one that is, at her core, the same person--but changed forever. Her times of being the comedic relief are over. She begins to grapple with the purpose of it all under a new, darker light. Yet another turn occurs when she meets Eli and embraces the Way of Love (let's take a moment to appreciate that the nonviolent path is the one called \"Way of Love\", whereas the do-anything-for-your-soulmate path is contrastingly called \"Way of Friendship\"... oh, what Gals Just Being Pals). Anyway, Gabrielle once again begins to question the morality of killing and what constitutes the correct form of justice. We see here that the girl from Poteidia is still there, just in a hardened form, but one that can open. For awhile, it appears that she has found answers that satisfy her, but underneath lurks a building sense of contradiction and inevitability, leading to the moment when things finally come to a head and she chooses to embrace her \"true path,\" the Way of Friendship. Now, we watch her grow into her eldest form, what I like to call \"Late-seasons Gabs.\" It is remarkable that she seems so unrecognizable when compared with the girl from Poteidia, and yet every step she took to get here felt natural and true to character.",
                   "Cyrene" => "Cyrene is, perhaps, the unsung hero of the show that is Xena: Warrior Princess. She is incredibly strong and fleshed-out from the very first moment we meet her--which is, mind you, the moment when she pulls a sword on her long-lost daughter and sends her away with the chilling line \"Go away, Xena. This is not your town anymore. We are not your people. I am not your mother. Hardened and unafraid since the beginning, Cyrene quickly shows another side of her when, after Xena indeed saves the village, she accepts her daugher with the admittance, \"I'm so happy to have you back again.\" This is an only mother who has lost all three (or two) of her children: one to war, one to shame, and one to greed and bloodlust. A woman who we later learn killed her husband to protect her child, the same one who later became an evil warlord. The woman who, in an alternate reality, died to protect all three of them. Throughout her appearances, her character remains remarkably consistent as she is revealed to have more and more depth.",
                   "Meg" => "",
                   "Marcus" => "",
                   "Callisto" => "",
                   "Autolycus" => "",
                   "Aphrodite" => ""}
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
    @seasons = [1, 2, 3, 4, 5, 6]
    @eps = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]
  end

  def create
    @entry = Entry.new(params.require(:entry).permit(:title, :season, :episode,
                                   :response_to, :comment, :sources))
    if @entry.save
      flash[:success] = "Your response has been recorded!"
      redirect_to '/posts'
    else
      render 'posts'
    end
  end

end
