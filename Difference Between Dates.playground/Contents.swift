import Cocoa

// Get the current date
let endDate = Date()     // Automatically provides current date

// Get the user's locale
// "Information about linguistic, cultural, and technological conventions for use in formatting data for presentation."
var userLocale = Locale.autoupdatingCurrent

// Set the calendar type
var gregorianCalendar = Calendar(identifier: .gregorian)
gregorianCalendar.locale = userLocale

// Define a date using Mr. Gordon's birthday
let mrGordonBirthdate = DateComponents(
  calendar: gregorianCalendar,
  timeZone: TimeZone(identifier: "America/Toronto"),
  year: 1977,
  month: 2,
  day: 21,
  hour: 1,
  minute: 58
)

// Print Mr. Gordon's birthday
let startDate = gregorianCalendar.date(from: mrGordonBirthdate)!
print("Mr. Gordon's was born on \(startDate.description(with: userLocale))")

// How old is Mr. Gordon, in years, days, hours, minutes, and seconds?
let diffComponents = Calendar.current.dateComponents(
    [
        .year,
        .day,
        .hour,
        .minute,
        .second
    ],
    from: startDate,
    to: endDate
)

// Print out how old Mr. Gordon is
print("Mr. Gordon is \(diffComponents.year!.description) years, \(diffComponents.day!.description) days, \(diffComponents.hour!.description) hours, \(diffComponents.minute!.description) minutes, and \(diffComponents.second!.description) seconds old.")


