class Flight < ApplicationRecord
  self.primary_key = "id"
  def self.ac_list
    resp = conn.get("/VirtualRadar/AircraftList.json")
    if resp.status == 200
      return resp.body["acList"]
    else
      return nil
    end
  end

  def self.update
    if ac_list.present?
      ac_list.each do |ac|
        ::FlightUpdaterWorker.perform_async(ac)
      end
      return ac_list.length
    end
  end

  def self.geopresent?(rec)
    rec['Lat'].present? && rec['Long'].present?
  end

  def self.geohash(rec)
    GeoHash.encode(rec["Lat"], rec["Long"])
  end

  def self.alpha2(rec)
    begin
    return ISO3166::Country.find_country_by_name(rec["Cou"]).alpha2
    rescue
      return nil
    end
  end

  def self.alpha3(rec)
    begin
    return ISO3166::Country.find_country_by_name(rec["Cou"]).alpha3
    rescue
      return nil
    end
  end

  def self.update_one(rec)
    if rec.present? && geopresent?(rec)
      flight = Flight.where(icao: rec["Icao"]).first_or_initialize
      flight.attributes = {fseen: Time.at(rec['FSeen'].scan(/\d{1,}/).first.to_i / 1000.0),
                           cmsgs: rec["CMsgs"],
                           altt: rec["AltT"],
                           tisb: rec["Tisb"],
                           trkh: rec["TrkH"],
                           sqk: rec["Sqk"],
                           vsit: rec["VsiT"],
                           wtc: rec["WTC"],
                           species: rec["Species"],
                           engtype: rec["EngType"],
                           engmount: rec['EngMount'],
                           mil: rec["Mil"],
                           cou: rec["Cou"],
                           haspic: rec["HasPic"],
                           interested: rec["Interested"],
                           flightscount: rec["FlightsCount"],
                           gnd: rec["Gnd"],
                           spdtyp: rec["SpdTyp"],
                           callsus: rec["CallSus"],
                           trt: rec["Trt"],
                           sig: rec["Sig"],
                           alt: rec["Alt"],
                           galt: rec["GAlt"],
                           inhg: rec["InHg"],
                           lat: rec["Lat"],
                           long: rec["Long"],
                           postime: rec["PosTime"],
                           mlat: rec["Mlat"],
                           tsecs: rec["TSecs"],
                           reg: rec["Reg"],
                           call: rec["Call"],
                           spd: rec["Spd"],
                           trak: rec["Trak"],
                           icao_type_code: rec["Type"],
                           mdl: rec["Mdl"],
                           man: rec["Man"],
                           cnum: rec["CNum"],
                           from: rec["From"],
                           to: rec["To"],
                           op: rec["Op"],
                           opicao: rec["OpIcao"],
                           engines: rec["Engines"],
                           year: rec["Year"],
                           help: rec['Help'],
                           vsi: rec["Vsi"],
                           talt: rec["TAlt"],
                           ttrk: rec["TTrk"],
                           posstale: rec["PosStale"],
                           sat: rec["Sat"],
                           geohash: geohash(rec),
                           alpha3: alpha3(rec),
                           alpha2: alpha2(rec)
      }
      flight.save
    end
  end

  private
  def self.conn
    Faraday.new("https://public-api.adsbexchange.com") do |f|
      f.headers["Content-Type"] = "application/json"
      f.response :json
      f.adapter Faraday.default_adapter
    end
  end
end
