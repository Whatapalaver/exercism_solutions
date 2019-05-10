class Bob
  def self.hey(remark)
    message = MessageAnalysis.new(remark)
    if message.yells? && message.question?
      "Calm down, I know what I'm doing!"
    elsif message.yells?
      'Whoa, chill out!'
    elsif message.question?
      'Sure.'
    elsif message.blank?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end

class MessageAnalysis
  attr_reader :text

  def initialize(text)
    @text = text.strip
  end

  def yells?
    text.upcase == text && text.match(/[A-Z]/)
  end

  def question?
    text.end_with?('?')
  end

  def blank?
    text.empty?
  end
end
