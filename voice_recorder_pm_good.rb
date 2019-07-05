class VoiceRecorder
  def initialize
    @record = ''
  end

  def record(thing)
    case thing
    in Animal
      @record = thing.roar
    in MusicalInstrument
      @record = thing.play
    in String
      @record = thing
    else
      @record = thing.to_s
    end
  end

  def play
    p @record
  end
end

class Animal
  def roar
    raise StandardError
  end
end

class Lion < Animal
  def roar
    'がおー'
  end
end

class Dog < Animal
  def roar
    'ワン'
  end
end

class MusicalInstrument
  def play
    raise StandardError
  end
end

class Piano < MusicalInstrument
  def play
    '〜♪'
  end
end

class Drum < MusicalInstrument
  def play
    'ドンドン'
  end
end

vr = VoiceRecorder.new

vr.record(Lion.new)
vr.play
# => "がおー"

vr.record(Piano.new)
vr.play
# => "〜♪"

vr.record('ほげほげ')
vr.play
# => "ほげほげ"

vr.record([1, 2, 3])
vr.play
# => "[1, 2, 3]"

