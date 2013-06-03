module Helpers
  def guest_render(template, locals = {})
    render(template, locals, "layouts/guest")
  end

  def user_render(template, locals = {})
    render(template, locals, "layouts/user")
  end

  def current_user
    @current_user ||= authenticated(User)
  end

  def money(decimal, currency = "php")
    case decimal
    when BigDecimal
      Money.new(decimal * 100, currency).format
    when Integer
      Money.new(decimal, currency).format
    else
      raise ArgumentError, "Unknown argument: #{decimal.inspect}"
    end
  end
end
