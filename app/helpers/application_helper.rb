module ApplicationHelper
  
  def format(object, option)
    if [ActiveSupport::TimeWithZone, Date, DateTime].include? object.class
      case option
      when 1
        "#{object.month}/#{object.day}/#{object.year}"
      when 2
        "#{object.month}-#{object.day}-#{object.year}"
      when 3
        "#{object.strftime("%b")} #{object.day}, #{object.year}"
      when 4
        "#{object.strftime("%B")} #{object.day}, #{object.year}"
      when 5
        "#{object.strftime("%B")} #{object.day.ordinalize}, #{object.year}"
      when 6
        "#{object.strftime("%B")} #{object.day.ordinalize}"
      else
        "There aren't this many options, use a smaller number."
      end
    end
  end
  
  def hinted_text_field_tag(name, value = nil, hint = "Click and enter text", options={})
    value = value.nil? ? hint : value
    text_field_tag name, value, {:onclick => "if($(this).value == '#{hint}'){$(this).value = ''}", :onblur => "if($(this).value == ''){$(this).value = '#{hint}'}" }.update(options.stringify_keys)
  end
  
  def next_site(site)  # returns the next id that exist on the site. no consideration for premium or standard
    if Site.last.id == site.id #TODO add scope back Spa::CURRENT_SPAS
      Site.first.id#TODO add scope back
    else
    i = site.id + 1
    until !Site.where(id: i).empty? #TODO add scope back
      i
      i += 1
    end
      i
    end
  end
  
  def last_site(site) # returns the next id down that exist on the site. no consideration for premium or standard
    if Site.first.id == site.id #TODO add scope back
      Site.last.id #TODO add scope back
    else
    i = site.id - 1
    until !Site.where(id: i).empty? #TODO add scope back
      i
      i -= 1
    end
      i
    end
  end
  
  def find_class_name(controller)
    split = controller.split("_")
    last = split.last.capitalize.singularize
    first = split[0..-2].each { |word| word.capitalize! }.join
    return first + last
  end
  
  def object_exists?(controller, id)
    eval(find_class_name(controller)).send("exists?", id)
  end
  
end
