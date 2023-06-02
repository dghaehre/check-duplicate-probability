(use ./init)

(defn usage []
  (print "Usage: check-duplicate-probability [possible-values] [number-of-values]")
  (os/exit 1))

(defn main [&opt _ possible-values number-of-values]
  (if (or (nil? possible-values) (nil? number-of-values))
    (usage)
    (let [p (int/to-number (int/u64 possible-values))
          n (int/to-number (int/u64 number-of-values))
          res (calculate p n)]
      (print (string "Given " p " possible values, and " n " random generated values:"))
      (print (string "The probability of a collision is: " (* 100 res) "%")))))
