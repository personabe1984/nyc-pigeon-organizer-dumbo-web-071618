def nyc_pigeon_organizer(data)
   organized = {}

   data.each do |attributes, options|
     options.each do |option, pigeons|
       pigeons.each do |pigeon|
         organized[pigeon] ||= {}
         organized[pigeon][attributes] ||= []
         organized[pigeon][attributes] << option.to_s
       end
     end
   end
   return organized
end