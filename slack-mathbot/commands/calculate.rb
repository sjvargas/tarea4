#require 'rest-client'

#module SlackMathbot
#  module Commands
#    class Distancia < SlackRubyBot::Commands::Base
#      command 'Distancia entre:' do |client, data, _match|
#        origen1 = data.text
#        destino1 = data.text
#        busqueda = RestClient.get 'https://maps.googleapis.com/maps/api/distancematrix/json?origins=' + origen1.split(­':')[1].sp­lit('-')[0] + '&destinations=' + destino1.split(­':')[1].sp­lit('-')[1] + '&key= AIzaSyBSIU35JErNsPB9fClZmbhah7xowIwVfno '
#        busquedaJson = JSON.parse(busqueda)
#        origen = busquedaJson["origin_addresses"][0].to_s
#        destino = busquedaJson["destination_addresses"][0].to_s
#        distancia = busquedaJson['rows'][0]['elements'][0]['distance']['text'].to_s
#        tiempo = busquedaJson['rows'][0]['elements'][0]['duration']['text'].to_s
#
#        client.say(channel: data.channel, text: "Calculando distancia y tiempo")
#
#        client.say(channel: data.channel, text: origen)
#        client.say(channel: data.channel, text: destino)
#        client.say(channel: data.channel, text: distancia)
#        client.say(channel: data.channel, text: tiempo)
#      end        
#    end
#  end
#end

require 'rest-client'

module SlackMathbot
  module Commands
    class Calculate < SlackRubyBot::Commands::Base
      command 'calculate' do |client, data, _match|
       # origen1 = data.text
        destino1 = data.text
        s = 'https://maps.googleapis.com/maps/api/distancematrix/json?origins=Santiago' + '&destinations=' + destino1[9..-1]+ '&key= AIzaSyBSIU35JErNsPB9fClZmbhah7xowIwVfno '
        client.say(channel: data.channel, text: destino1[9..-1])
        client.say(channel: data.channel, text: s)
       # busqueda = RestClient.get s
       # busquedaJson = JSON.parse(busqueda)
        
      #  origen = busquedaJson["origin_addresses"][0].to_s
      #  destino = busquedaJson["destination_addresses"][0].to_s
      #  distancia = busquedaJson['rows'][0]['elements'][0]['distance']['text'].to_s
      #  tiempo = busquedaJson['rows'][0]['elements'][0]['duration']['text'].to_s

#        client.say(channel: data.channel, text: "Calculando distancia y tiempo")
      # client.say(channel: data.channel, text: data.text)
      # client.say(channel: data.channel, text: origen)
      # client.say(channel: data.channel, text: destino)
      # client.say(channel: data.channel, text: distancia)
      # client.say(channel: data.channel, text: tiempo)
      end        
    end
  end
end