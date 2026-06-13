(defstruct erva nome preco-base)

(defun calcula-dosagem (peso idade)
  (cond
    ((or (< idade 12) (< peso 30)) "10ml")
    ((< peso 60) "25ml")
    (t "50ml")))

(defun ajusta-preco (erva)
  (cond
    ((string= (erva-nome erva) "Ginseng") (* (erva-preco-base erva) 3.0))
    ((string= (erva-nome erva) "Lotus")   (* (erva-preco-base erva) 1.5))
    (t (erva-preco-base erva))))

(defun descricao-erva (erva peso idade)
  (format nil "~a - Preco: R$ ~a - Dosagem: ~a"
          (erva-nome erva)
          (ajusta-preco erva)
          (calcula-dosagem peso idade)))

(defun main ()
  (let ((ginseng  (make-erva :nome "Ginseng"  :preco-base 50.0))
        (lotus    (make-erva :nome "Lotus"    :preco-base 30.0))
        (camomila (make-erva :nome "Camomila" :preco-base 20.0)))

    (format t "~% Paciente 1 (peso 8.0, idade 5) ~%")
    (format t "~a~%" (descricao-erva ginseng 8.0 5))
    (format t "~a~%" (descricao-erva lotus 8.0 5))
    (format t "~a~%" (descricao-erva camomila 8.0 5))

    (format t "~% Paciente 2 (peso 45.0, idade 25) ~%")
    (format t "~a~%" (descricao-erva ginseng 45.0 25))
    (format t "~a~%" (descricao-erva lotus 45.0 25))
    (format t "~a~%" (descricao-erva camomila 45.0 25))

    (format t "~% Paciente 3 (peso 80.0, idade 40) ~%")
    (format t "~a~%" (descricao-erva ginseng 80.0 40))
    (format t "~a~%" (descricao-erva lotus 80.0 40))
    (format t "~a~%" (descricao-erva camomila 80.0 40))))

(main)
