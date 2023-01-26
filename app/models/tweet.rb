class Tweet < ApplicationRecord

  enum tag: {with_tag: 0, no_tag: 1,}
end
