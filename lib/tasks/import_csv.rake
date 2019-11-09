namespace :import_csv do
    # rake import_csv:hospitals
    desc "hospitalのcsvデータのインポート"

    task hospitals: :environment do
        ImportCsv.hospital_data('db/csv_data/hospital_data.csv')
    end

end
