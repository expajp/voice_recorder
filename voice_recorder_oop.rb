class VoiceRecorder
  def initialize
    @record = ''
  end

  def record(bird)
    @record = bird.tweet
  end

  def play
    p @record
  end
end

class Duck
  def tweet
    'ガアガア'
  end
end

class Crow
  def tweet
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
