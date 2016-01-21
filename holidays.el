(setq brazil-national-holidays
      '((holiday-fixed 1 1 "New Year's Day")
	(holiday-fixed 4 21 "Tiradentes' Day")
	(holiday-fixed 5 1 "Labour Day")
	(holiday-fixed 9 7 "Brazilian Independence Day")
	(holiday-fixed 10 12 "Our Lady of Aparecida")
	(holiday-fixed 11 2 "All Souls' Day")
	(holiday-fixed 11 15 "Brazilian Republic Day")
	(holiday-sexp '(if (zerop (% year 2))
			   (calendar-gregorian-from-absolute
			    (+ 6 (calendar-dayname-on-or-before
				  1 (calendar-absolute-from-gregorian
				     (list 10 1 year))))))
		      "1st Day Brazilian Election")
	(holiday-sexp '(if (zerop (% year 2))
			   (calendar-gregorian-from-absolute
			    (calendar-dayname-on-or-before
			     0 (calendar-absolute-from-gregorian
				(list 11 1 year)))))
		      "2nd Day Brazilian Election")
	(holiday-easter-etc -47 "Carnival")
	(holiday-easter-etc 60 "Corpus Christi")))

(setq sao-paulo-state-holidays
      '((holiday-fixed 7 9 "Constitutionalist Revolution")))

(setq sao-paulo-city-holidays
      '((holiday-fixed 1 25 "Sao Paulo Birthday")
	(holiday-fixed 11 20 "Black Awareness Day")))

(setq calendar-holidays
      (append brazil-national-holidays
	      holiday-christian-holidays
	      sao-paulo-state-holidays
	      sao-paulo-city-holidays))
