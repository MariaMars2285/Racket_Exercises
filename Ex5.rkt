;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex5) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(define bottom (rectangle 10 30 "solid" "brown"))

(define top1 (triangle 40 "solid" "green"))

(define top2 (triangle 40 "solid" "green"))

(define top (overlay/offset top1 0 21 top2))

(place-image (overlay/offset top 0 40 bottom)
             100 100
             (empty-scene 200 200))