class ResistorColorDuo
  RESISTANCE = { 'black' => '0', 'brown' => '1', 'red' => '2',
                 'orange' => '3', 'yellow' => '4', 'green' => '5',
                 'blue' => '6', 'violet' => '7',
                 'grey' => '8', 'white' => '9' }.freeze

  def self.value(colors)
    # commented this alternative solution as I don't fully understand to_proc yet
    # colors.map(&RESISTANCE).join.to_i
    colors.map( { |color| RESISTANCE[color] }).join.to_i
  end
end
