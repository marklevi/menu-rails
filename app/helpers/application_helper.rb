module ApplicationHelper
  def integer_to_dollars(int)
  	"$#{int/100}.#{int%100}"
  end
end
