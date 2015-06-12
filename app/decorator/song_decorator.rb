class SongDecorator < Draper::Decorator
  def popularity
    if object.plays > 3000
      " it is popular."
    else
      " it is unpopular."
    end
  end

  def play_message

    "#{object.name} has #{h.pluralize(object.plays, "play")}"
  end

  def message
    [play_message, popularity].compact.join(',')
  end
end
