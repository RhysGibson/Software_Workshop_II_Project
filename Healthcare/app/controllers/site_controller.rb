class SiteController < ApplicationController
  def home
  end

  def findClinics
    @clinics = Clinic.all
    @hash = Gmaps4rails.build_markers(@clinics) do |clinics, marker|
      clinicsInfo = "<b>#{clinics.name}</b> <br> <br>#{clinics.address} <br><br> #{clinics.hours} <br><br> #{clinics.doctors}"
      marker.lat clinics.latitude
      marker.lng clinics.longitude
      marker.infowindow clinicsInfo
    end
  end
end
