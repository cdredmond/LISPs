(defun get-bd ()

(defun get-bmonth ()
    (print "Enter birth month: ")
    (setf bMonth (read))
    (princ bMonth))

(defun get-bnumber ()
    (print "Enter birth day number: ")
    (setf bNumber (read))
    (princ bNumber))

(defun calc-day-number-of-year (month day)
    (cond ((equal month 'jan) (setf day-num-of-year (+ day 0)))
          ((equal month 'feb) (setf day-num-of-year (+ day 31)))
	  ((equal month 'mar) (setf day-num-of-year (+ day 59)))
	  (t (setf day-num-of-year 999))))

(defun zodiac-sign (day-num-of-year)
    (cond ((< day-num-of-year 23) (setf zodiac 'cap))
          ((< day-num-of-year 53) (setf zodiac 'aqu))
	  ((< day-num-of-year 83) (setf zodiac 'pic))
	  (t (setf zodiac 'idk))))

(get-bmonth)
(get-bnumber)

(calc-day-number-of-year bMonth bNumber)

(zodiac-sign day-num-of-year)

(progn
    (princ #\newline)
    (princ bMonth)
    (princ " ")
    (princ bNumber)
    (princ " your zodiac sign is ")
    (princ zodiac)
    )

)

