; The first line of input will contain an integer (N) that tells how many more lines there are in the input. Each of the subsequent N lines contain 2 integers.This program prints the sum of each pair.
; cerner_2^5_2018

(use '[clojure.string :only (split triml)])
(def n (Integer/parseInt (read-line)))

(loop [i 0]
	(when (< i n)
		(def a (read-line))
		(def new (split a #"\s+"))
		(println ( + (Integer/parseInt (get new 0)) (Integer/parseInt (get new 1))
))
		(recur (inc i))
))
