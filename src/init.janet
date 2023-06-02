(defn calculate [possible-values number-of-values]
  (let [from      (- possible-values (- number-of-values 1))
        result    (->> (reverse (range from possible-values))
                       (map |(/ $ possible-values))
                       (reduce2 |(* $0 $1)))]
    (- 1 result)))
