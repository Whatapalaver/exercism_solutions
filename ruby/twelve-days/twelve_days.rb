=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

class TwelveDays

  DAYS = %w[first second third fourth fifth sixth
            seventh eighth ninth tenth eleventh twelfth].freeze

  FIRST_DAY = ['a Partridge in a Pear Tree.']       

  GIFTS = ['and a Partridge in a Pear Tree.',
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
    "On the #{DAYS[day - 1]} day of Christmas my true love gave to me: #{gifts(day)}\n"
  end

  def self.gifts(days)
    gifts = days == 1 ? FIRST_DAY : GIFTS[0, days].reverse
    gifts.join(', ')
  end

end
