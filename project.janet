(declare-project
  :name "check-duplicate-probability"
  :description ```Check the probability of creating duplicate keys given number of keys and number of possible values ```
  :version "0.0.0")

(declare-executable
  :name "check-duplicate-probability"
  :entry "./src/main.janet"
  :install true)
