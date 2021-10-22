json.partial! "guest", guest: @guest

json.set! "gifts" do
    json.array! @guest.gifts do |gift|
        json.extract! gift, :title, :description
    end
end