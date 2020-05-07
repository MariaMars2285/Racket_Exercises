;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex31) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(write-file "first-name.txt" "Maria")
(write-file "last-name.txt" "Selvam")
(write-file "signature.txt" "Stalin")

(define (header first-name)
  (string-append "Dear " first-name))

(define (body first-name last-name)
  (string-append "Hope this letter finds you in good health. How is life? Take care." first-name " " last-name "?"))

(define (footer sender-name)
  (string-append "Sincerely,\n " sender-name))
 

(define (letter fst-name lst-name signature)
  (string-append (header fst-name) "\n"
                 (body fst-name lst-name) "\n"
                 (footer signature)))

(define (main in-fst in-lst in-signature out)
  (write-file out
              (letter (read-file in-fst)
                      (read-file in-lst)
                      (read-file in-signature))))