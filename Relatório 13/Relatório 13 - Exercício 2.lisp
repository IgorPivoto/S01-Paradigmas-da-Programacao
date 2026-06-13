(defstruct criatura nome ambiente periculosidade vida-media)

(defun filtra-por-perigo (lista)
  (remove-if (lambda (c) (eq (criatura-periculosidade c) :baixa)) lista))

(defun relatorio-profundidade (lista)
  (mapcar (lambda (c) (format nil "~a: Vive em ~a" (criatura-nome c) (criatura-ambiente c)))
          (remove-if-not (lambda (c) (string= (criatura-ambiente c) "Deep")) lista)))

(defun descricao-criatura (c)
  (format nil "~a - Ambiente: ~a - Periculosidade: ~a"
          (criatura-nome c)
          (criatura-ambiente c)
          (criatura-periculosidade c)))

(defparameter *catalogo*
  (list (make-criatura :nome "Peeper"               :ambiente "Safe Shallows" :periculosidade :baixa :vida-media 5)
        (make-criatura :nome "Reaper Leviathan"     :ambiente "Dunes"         :periculosidade :alta  :vida-media 40)
        (make-criatura :nome "Crabsquid"            :ambiente "Deep"          :periculosidade :media :vida-media 20)
        (make-criatura :nome "Sea Dragon Leviathan" :ambiente "Deep"          :periculosidade :alta  :vida-media 60)))

(defun main ()
  (format t "~% Catalogo completo ~%")
  (dolist (c *catalogo*)
    (format t "~a~%" (descricao-criatura c)))

  (format t "~% Criaturas perigosas ~%")
  (dolist (c (filtra-por-perigo *catalogo*))
    (format t "~a~%" (descricao-criatura c)))

  (format t "~% Relatorio de profundidade ~%")
  (dolist (linha (relatorio-profundidade *catalogo*))
    (format t "~a~%" linha)))

(main)
