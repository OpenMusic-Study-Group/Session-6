;========================================
;---------------Alan Lib-----------------
; 21/06/2020
;========================================


(in-package :om)

;; Removenth 
;; Removing an Nth element from a list 
(defmethod! RemoveNth ((number1 number) (list list))
    :initvals '(0 '(0 1 2 3))
    :indoc '("Nth element to be removed" "a list")
    :icon 907
    :doc "Removes the nth element from a list"    
    
    (Remove-nth number1 list) ;; Here is the code which OM runs 
    )

(defun Remove-nth ( n list );; here is the lisp code
    (if (and list (< 0 n))
        (cons (car list) (Remove-nth (1- n) (cdr list)))
        (cdr list)
    )
)


