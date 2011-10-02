module Cucumber
  class Autodestruct
    def initialize
      @connection = SerialPort.new '/dev/tty.usbmodemfa131', 9600
    end
    
    def stop!
      send 0
    end
    
    def start!
      send 1
    end
    
    def light_level
      send 2
    end
    
    def send(number)
      @connection.write [number].pack('C')
      @connection.getc.unpack('C')[0]
    end
  end
end