class FlightUpdaterWorker
  include Sidekiq::Worker

  def perform(rec)
    Flight.update_one(rec)
  end
end
