require 'pry'

# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  # def parse
  #
  #   emails_array = emails.scan(/[a-z]+@[a-z]+.com[,\s]/) + emails.scan(/\s[a-z]+@[a-z]+.com/)
  #
  #   emails_array.map {|email|
  #     if email[-1] == ","
  #       email[0...-1]
  #     else
  #       email.strip
  #     end
  #   }.uniq
  # end

  def parse
    binding.pry
    emails.split(/[\s,]/).select {|email| email != ""}.uniq
  end

end
