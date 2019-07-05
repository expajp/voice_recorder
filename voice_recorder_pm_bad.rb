class VoiceRecorder
  def initialize
    @record = ''
  end

  def record(bird)
    case bird
    in Duck
      @record = bird.quack
    in Crow
      @record = bird.caw
    end
  end

  def play
    p @record
  end
end

class Duck
  def quack
    'ガアガア'
  end
end

class Crow
  def caw
    'カーカー'
  end
end

vr = VoiceRecorder.new

vr.record(Duck.new)
vr.play
# => "ガアガア"

vr.record(Crow.new)
vr.play
# => "カーカー"
