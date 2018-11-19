

-- 1. show the date received from consumercomplaints table with month name - 

SELECT  DATE_FORMAT(`date received`,'%b %y') AS Plus_one_week FROM consumerdb.consumer_complaints;

-- 2. use the below mentioned format for date and show date in all formats

-- %a-Abbreviated weekday name (Sun-Sat)
-- %b-Abbreviated month name (Jan-Dec)
-- %c-Month, numeric (0-12)
-- %D-Day of month with English suffix (0th, 1st, 2nd, 3rd)
-- %d-Day of month, numeric (00-31)
-- %e-Day of month, numeric (0-31)
-- %f-Microseconds (000000-999999)
-- %H-Hour (00-23)
-- %h-Hour (01-12)
-- %I-Hour (01-12)
-- %i-Minutes, numeric (00-59)
-- %j-Day of year (001-366)
-- %k-Hour (0-23)
-- %l-Hour (1-12)
-- %M-Month name (January-December)
-- %m-Month, numeric (00-12)
-- %p-AM or PM
-- %r-Time, 12-hour (hh:mm:ss followed by AM or PM)
-- %S-Seconds (00-59)
-- %s-Seconds (00-59)
-- %T-Time, 24-hour (hh:mm:ss)
-- %U-Week (00-53) where Sunday is the first day of week
-- %u-Week (00-53) where Monday is the first day of week
-- %V-Week (01-53) where Sunday is the first day of week, used with %X
-- %v-Week (01-53) where Monday is the first day of week, used with %x
-- %W-Weekday name (Sunday-Saturday)
-- %w-Day of the week (0=Sunday, 6=Saturday)
-- %X-Year for the week where Sunday is the first day of week, four digits, used with %V
-- %x-Year for the week where Monday is the first day of week, four digits, used with %v
-- %Y-Year, numeric, four digits
-- %y-Year, numeric, two digits

SELECT  DATE_FORMAT(`date received`,'%a %b %y') AS Plus_one_week FROM consumerdb.consumer_complaints;



