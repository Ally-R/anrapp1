class Entry < ApplicationRecord
  #validates :episode, exclusion: { in: [23, 24],
   #  message: "Episode %{value} only exists in season 1." }, unless: Proc.new { :season == 1}
end
