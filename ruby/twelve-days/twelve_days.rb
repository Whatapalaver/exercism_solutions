=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

class TwelveDays

  DAYS = %w[first second third fourth fifth sixth
            seventh eighth ninth tenth eleventh twelfth].freeze

  GIFTS = ['a Partridge in a Pear Tree',
           'two Turtle Doves',
           'three French Hens',
           'four Calling Birds',
           'five Gold Rings',
           'six Geese-a-Laying',
           'seven Swans-a-Swimming',
           'eight Maids-a-Milking',
           'nine Ladies Dancing',
           'ten Lords-a-Leaping',
           'eleven Pipers Piping',
           'twelve Drummers Drumming'].freeze

  def self.song()
    1.upto(12).map { |day| verse(day) }.join("\n")
  end

  def self.verse(day)
    "On the #{DAYS[day - 1]} day of Christmas my true love gave to me: #{sentence(gifts(day))}\n"
  end

  def self.gifts(days)
    GIFTS[0, days]
  end

  def self.sentence(gifts)
    *other_gifts, last_gift = gifts.reverse
    other_gifts.empty? ? "#{last_gift}." :  "#{other_gifts.join(", ")}, and #{last_gift}."
  end

end
