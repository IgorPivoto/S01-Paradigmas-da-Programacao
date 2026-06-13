(defstruct item nome tipo preco forca-magica)

(defun adiciona-imposto (p)
  (* p 1.15))

(defun bonus (f)
  (cond
    ((> f 80) (* f 1.5))
    (t f)))

(defun descricao-venda (item)
  (format nil "~a - Preco: R$ ~a - Forca magica: ~a"
          (item-nome item)
          (item-preco item)
          (item-forca-magica item)))

(defun processa-venda (itens)
  (let* ((armas (remove-if-not (lambda (i) (eq (item-tipo i) :arma)) itens))
         (processados (mapcar (lambda (i)
                                (make-item :nome (item-nome i)
                                           :tipo (item-tipo i)
                                           :preco (adiciona-imposto (item-preco i))
                                           :forca-magica (bonus (item-forca-magica i))))
                              armas)))
    (mapcar #'descricao-venda processados)))

(defparameter *catalogo*
  (list (make-item :nome "Espada" :tipo :arma     :preco 200.0 :forca-magica 90.0)
        (make-item :nome "Adaga"    :tipo :arma     :preco 100.0 :forca-magica 50.0)
        (make-item :nome "Pocao de Vida"  :tipo :pocao    :preco 25.0  :forca-magica 0.0)
        (make-item :nome "Cajado"  :tipo :arma     :preco 300.0 :forca-magica 85.0)
        (make-item :nome "Amuleto" :tipo :artefato :preco 150.0 :forca-magica 70.0)))

(defun main ()
  (format t "~% Vendas processadas (apenas armas) ~%")
  (dolist (linha (processa-venda *catalogo*))
    (format t "~a~%" linha)))

(main)
