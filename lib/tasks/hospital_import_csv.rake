namespace :hospital_import_csv do
    # rake hospital_import_csv:hospitals
    desc "hospitalのcsvデータのインポート"

    task hospitals: :environment do
        Hospital.import('db/csv_data/hospital_data.csv')
    end

end
