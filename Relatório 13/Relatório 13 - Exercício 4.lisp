(defstruct local nome elemento dificuldade recompensa)

(defun bonus (l)
  (cond
    ((or (eq (local-elemento l) :pyro) (eq (local-elemento l) :electro))
     (* (local-recompensa l) 1.2))
    ((eq (local-elemento l) :cryo)
     (* (local-recompensa l) 1.1))
    (t (local-recompensa l))))

(defun vale-a-pena (l)
  (and (> (bonus l) 500)
       (<= (local-dificuldade l) 3)))

(defun rota-de-farm (lista)
  (mapcar (lambda (l) (format nil "~a - Recompensa: ~a" (local-nome l) (bonus l)))
          (remove-if-not #'vale-a-pena lista)))

(defparameter *catalogo*
  (list (make-local :nome "Dominio do Vulcao" :elemento :pyro    :dificuldade 2 :recompensa 500.0)
        (make-local :nome "Torre Gelada"      :elemento :cryo    :dificuldade 3 :recompensa 480.0)
        (make-local :nome "Ruina Eletrica"    :elemento :electro :dificuldade 4 :recompensa 600.0)
        (make-local :nome "Fonte das Aguas"   :elemento :hydro   :dificuldade 2 :recompensa 450.0)
        (make-local :nome "Pico dos Ventos"   :elemento :anemo   :dificuldade 1 :recompensa 550.0)))

(defun main ()
  (format t "~% Lista completa (recompensa com bonus) ~%")
  (dolist (l *catalogo*)
    (format t "~a: R$ ~a~%" (local-nome l) (bonus l)))

  (format t "~% Rota de farm recomendada ~%")
  (dolist (linha (rota-de-farm *catalogo*))
    (format t "~a~%" linha)))

(main)
