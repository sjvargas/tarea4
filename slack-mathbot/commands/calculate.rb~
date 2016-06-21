require 'rest-client'

module SlackMathbot
  module Commands
    class Distancia < SlackRubyBot::Commands::Base
      command 'Distancia entre' do |client, data, _match|
        client.say(channel: data.channel, text: "Calculando distancia y tiempo")
        origen1 = data.text.split(­':')[1].sp­lit('-')
        destino1 = data.text.split(­':')[1].sp­lit('-')
        client.say(channel: data.channel, text: origen1[0])
        client.say(channel: data.channel, text: destino1[1])

			end        
    end
  end
end
