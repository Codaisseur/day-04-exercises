class Cook
  attr_accessor :name, :secrets, :dishes, :activity

  DEFAULT_SECRET  = 'If it does not taste well, you did not add enough butter'

  def initialize(name, secrets=[DEFAULT_SECRET])
    @name = name
    @secrets = secrets
    @dishes = []
    @activity = 'on_duty'
  end

  def day_off
    @activity = 'day_off'
  end

  def on_duty?
    @activity == 'on_duty'
  end

  def make(dish)
    return puts "I'm not at work :/" unless on_duty?

    @dishes << dish
    puts "Here you go, a tasty #{dish}"

    day_off if @dishes.count == 10
  end

  def go_to_work
    @activity = 'on_duty'
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
    amount of secrets: #{@secrets.count}
    I made #{printable_dishes}"
  end

  def printable_secrets
    @secrets.join(', ')
  end

  def printable_dishes
    @dishes.join(', ')
  end
end
