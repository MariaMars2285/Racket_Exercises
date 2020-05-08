;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex47) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))

(define (render ws)
   (empty-scene 200 100))

(define BACKGROUND
  (rectangle 100 20 "outline" "black"))

(define (render-gauge ws)
  (overlay/xy BACKGROUND 0 0 (rectangle ws 20 "solid" "red")))

(define (change ws a-key)
  (cond
    [(key=? a-key "up") (+ ws (/ 1 3))]
    [(key=? a-key "down") (+ ws (/ 1 5))]
    [else ws]))

(define (sub st)
  (if (>= (- st 0.1) 0)
      (- st 0.1)
      0))

(big-bang 100
  [to-draw render-gauge]
  [on-tick sub]
  [on-key change]
  )