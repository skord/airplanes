namespace :api do
  desc "TODO"
  task scrape: :environment do
    sched = Rufus::Scheduler.new
    sched.every '1m', first_at: Time.now + 10, overlap: false do
      puts "Starting Update"
      Flight.update
    end
    puts "Starting Scheduler"
    sched.join
  end

end
