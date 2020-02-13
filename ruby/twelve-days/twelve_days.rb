=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

class TwelveDays

  DAYS = %w[zero first second third fourth fifth sixth
            seventh eight ninth tenth eleventh twelth].freeze

  GIFTS = ['and a Partridge in a Pear Tree',
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
    1.upto(12).map { |day| verse(day) }.join('\n')
  end

  def self.verse(day)
    case day
    when 1
      'On the first day of Christmas my true love gave to me, a Partridge in a Pear Tree.'
    when 2..12
      "On the #{DAYS[day]} day of Christmas my true love gave to me, #{GIFTS[0, day].reverse.join(', ')}"
    end
  end

  
end
