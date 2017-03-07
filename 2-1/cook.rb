class Cook
  attr_accessor :name, :secrets

  def initialize(name, secrets=['If it does not taste well, you did not add enough butter'])
    @name = name
    @secrets = secrets
  end

  def add_secret(secret)
    @secrets << secret
  end

  def print_details
    puts "#{@name}
    This are the secrets: #{printable_secrets}
    amount of secrets: #{@secrets.count}"
  end

  def printable_secrets
    @secrets.join(', ')
  end
end
