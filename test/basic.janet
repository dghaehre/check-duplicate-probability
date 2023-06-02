(use ../src/init)

# The birthday paradox
(let [res (calculate 365 23)]
  (assert (= (string res) "0.507297")))
