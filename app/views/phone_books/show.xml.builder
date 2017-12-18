xml.instruct!
xml.tag!("#{@phone_book.title.delete(' ')}IPPhoneDirectory") do
  xml.Title @phone_book.title
  @entries.each do  |entry|
    xml.tag!("DirectoryEntry") do
      xml.Name entry.name
      xml.Telephone entry.telephones
    end
  end
end
