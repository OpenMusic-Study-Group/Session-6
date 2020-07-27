(in-package :om)

(defmethod! test2 ((arg1 number)) 
   :initvals '(4) 
   :indoc '("yet another test")
   :icon 908 
   :doc "test foo" 
  
   (princ "foo"))
