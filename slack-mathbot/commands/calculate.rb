require 'rest-client'

module SlackMathbot
  module Commands
    class Distancia< SlackRubyBot::Commands::Base
      command 'Distancia entre:' do |client, data, _match|
        origen1 = data.text.split(­':')[1].sp­lit('-')
        destino1 = data.text.split(­':')[1].sp­lit('-') 

        busqueda = RestClient.get  'https://maps.googleapis.com/maps/api/distancematrix/json?origins=' + origen1[0] + '&destinations=' + destino1[1] + '&key= AIzaSyBSIU35JErNsPB9fClZmbhah7xowIwVfno'
        busquedaJson = JSON.parse(busqueda)
        origen = busquedaJson["origin_addresses"][0].to_s
        destino = busquedaJson["destination_addresses"][0].to_s
        distancia = busquedaJson['rows'][0]['elements'][0]['distance']['text'].to_s
        tiempo = busquedaJson['rows'][0]['elements'][0]['duration']['text'].to_s

        client.say(channel: data.channel, text: "Calculando distancia y tiempo")

        client.say(channel: data.channel, text: origen)
        client.say(channel: data.channel, text: destino)
        client.say(channel: data.channel, text: distancia)
        client.say(channel: data.channel, text: tiempo)
      end        
    end
  end
end