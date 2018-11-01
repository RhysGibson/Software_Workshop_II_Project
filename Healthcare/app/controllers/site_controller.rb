class SiteController < ApplicationController
  def home
  end

  def findClinics
    @clinics = Clinic.all
    @hash = Gmaps4rails.build_markers(@clinics) do |clinics, marker|
      marker.lat clinics.latitude
      marker.lng clinics.longitude
    end
  end
end
