module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Teethree"      
    end
  end
end
