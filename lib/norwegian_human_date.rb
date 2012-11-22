# encoding: utf-8
require 'active_support/time'
class NorwegianHumanDate

  VERSION = "0.0.1"

  # Month and day names
  MONTHS_NO = %w(jan feb mar apr mai jun jul aug sep okt nov des)
  MONTHS_LONG_NO = %w(januar februar mars april mai juni juli august september oktober november desember)
  WEEKDAYNAMES_NO = %w(søndag mandag tirsdag onsdag torsdag fredag lørdag)

  class << self

  # Gir menneske-orienterte relative dato-angivelser. I morgen heter
  # "i morgen", i går heter "i går" og lørdag neste uke heter "lørdag
  # neste uke". onsdag 23. april 1974 derimot, heter "onsdag 23. april
  # 1974".
  #
  # Støtter følgende options:
  # <tt>:now</tt> - Hva skal den regne som "nå"? (default: Time.now)
  # <tt>:shortmonths</tt> - Bruke tre bokstavers månedsnavn? (default: false)

  def relative(time, options = {})

    # Normalize so we compare apples to apples
    now = (options[:today] || Time.now).to_time.localtime.midnight
    time = time.to_time.localtime.midnight

    shortmonths = options[:shortmonths]
    monthnames = MONTHS_LONG_NO
    monthnames = MONTHS_NO if shortmonths

    if options[:absolute_date]
      absolute_date = ', '+time.day.to_s+". "+monthnames[time.month-1]
    else
      absolute_date = ''
    end

    if time == now - 1.day
      "i går"+absolute_date
    elsif time == now
      "i dag"+absolute_date
    elsif time == now + 1.day
      "i morgen"+absolute_date
    elsif (6.days.ago.to_i .. 6.days.from_now.to_i).cover? time.to_i
      if time < now
        # "sist onsdag"
        'sist '+WEEKDAYNAMES_NO[time.wday]+absolute_date
      else
        # "onsdag"
        WEEKDAYNAMES_NO[time.wday]+absolute_date
      end
    elsif time.year == now.year
      # "4. juni"
      WEEKDAYNAMES_NO[time.wday]+" "+time.day.to_s+". "+monthnames[time.month-1]
    else
      # "4. juni 2005"
      WEEKDAYNAMES_NO[time.wday]+" "+time.day.to_s+". "+monthnames[time.month-1]+" "+time.year.to_s
    end
  end

  end
end
