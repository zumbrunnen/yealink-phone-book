xml.instruct!
xml.tag!("#{@phone_book.title.delete(' ')}IPPhoneDirectory") do
  xml.Title @phone_book.title
  @entries.each do |entry|
    xml.tag!("DirectoryEntry") do
      xml.Name entry.name
      xml.Telephone entry.phone_office if entry.phone_office.present?
      xml.Telephone entry.phone_mobile if entry.phone_mobile.present?
      xml.Telephone entry.phone_other if entry.phone_other.present?
    end
  end
end
