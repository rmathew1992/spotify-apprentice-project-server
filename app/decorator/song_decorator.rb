class SongDecorator < Draper::Decorator
  def popularity
    if object.plays > 3000
      "#{object.name} has #{object.plays}, it is popular"
    end
  end
end
