class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights, options: "with system versioning" do |t|
      t.string :icao
      t.datetime :fseen
      t.integer :cmsgs
      t.boolean :altt
      t.boolean :tisb
      t.boolean :trkh
      t.integer :sqk
      t.boolean :vsit
      t.integer :wtc
      t.integer :species
      t.integer :engtype
      t.integer :engmount
      t.boolean :mil
      t.string :cou
      t.boolean :haspic
      t.boolean :interested
      t.integer :flightscount
      t.boolean :gnd
      t.integer :spdtyp
      t.boolean :callsus
      t.integer :trt
      t.decimal :sig
      t.integer :alt
      t.integer :galt
      t.decimal :inhg
      t.decimal :lat, {precision: 10, scale: 6}
      t.decimal :long, {precision: 10, scale: 6}
      t.datetime :postime
      t.boolean :mlat
      t.integer :tsecs
      t.string :reg
      t.string :call
      t.decimal :spd
      t.float :trak
      t.string :icao_type_code
      t.string :mdl
      t.string :man
      t.string :cnum
      t.string :from
      t.string :to
      t.string :op
      t.string :opicao
      t.integer :engines
      t.integer :year
      t.boolean :help
      t.integer :vsi
      t.integer :talt
      t.integer :ttrk
      t.boolean :posstale
      t.boolean :sat
      t.string :geohash
      t.string :alpha2
      t.string :alpha3

      t.timestamps
    end
  end
end
