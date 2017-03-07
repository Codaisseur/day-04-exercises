class Cook
  attr_accessor :name, :secrets
  DEFAULT_SECRET  = 'If it does not taste well, you did not add enough butter'

  def initialize(name, secrets=[DEFAULT_SECRET])
    @name = name
    @secrets = secrets
  end

  def add_secret(secret)
    @secrets << secret
  end

  def remove_default_secret
    return if @secrets.count == 1
    @secrets = @secrets.reject do |secret|
      secret == DEFAULT_SECRET
    end
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
