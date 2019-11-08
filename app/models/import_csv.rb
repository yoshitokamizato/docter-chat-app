class  ImportCsv < ApplicationRecord

    def self.import(path)
        list = []
        CSV.foreach(path, headers: true) do |row|
            list << {
                name: row["name"],
                address: row["address"],
                phone: row["phone"]
            }
        end
        puts "インポート開始"
        Hospital.create!(list)
        puts "インポートに成功しました"
    rescue ActiveModel::UnknownAttributeError => invalid
    end
end
