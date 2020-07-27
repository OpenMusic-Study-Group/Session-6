(in-package :om)
#|
(in-package :mfl)  First, seting the package where the functions will be defined 

|#

;; Here is where we can let people know what your function does, and also make it look cool!
(defmethod! mult-1k ((arg1 number)) 
   :initvals '(60) 
   :indoc '("What Number?")
   :icon 909 
   :doc "multiple a number by 1000" 
  
   (princ (* arg1 1000))) ;This is the code which your function will execute. 

#|
====================
Rozalie uses defmethod*
Charles uses defmethod! dropping the om keyword. 
Jean uses the two keywords om and defmethod!
====================
(om::defmethod! carre ((x number))
 :initvals '(10 )    ; an initial values list
	:indoc '("a number" ) ; an string list with short docs
	:icon 111  ; the icon
	:doc "Calculates the square of <number>"
	
  (* x x))
|#
