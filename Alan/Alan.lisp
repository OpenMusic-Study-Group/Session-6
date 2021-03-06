(in-package :om) ;Rozalie uses this. Charles K. Neimog also and Nigel

#|
====================
Jean Bresson's way
====================
(defpackage :mfl) ; <mfl> is just a symbol, it means : "my function library" (you also could use <john>) 

(in-package :mfl)


====================
Nigel McBride's way
====================

(defvar *OMAex-nm* nil) ;;this will store the locations of the source files
(setf *OMaex-nm*
	(make-pathname : directory (append (pathname-directory *load-pathname*)(list "sources")) :name "multi-1k" :type "lisp")) ;;loading them into the var

(mapc #'compile&load *OMAex-nm*) ;;mapping compile&load over all of the paths in the list

|#
(compile&load (om-relative-path '("sources") "mult-1k")) ;Charles K. Neimog
(compile&load (om-relative-path '("sources") "test2"))
(compile&load (om-relative-path '("sources") "remove-nth"))

#|
====================
The Rozalie Hirs's way
====================

(mapc #'(lambda (file) (compile&load 
                        (make-pathname :directory (append (pathname-directory *load-pathname*) '("sources")) 
                                       :name file)))
      '("OM-functions"
        "utils"
        "TMlibrairie-OM"
        "OM-CS"
        "Max-Next"
        "OMspdata"
        "Addi-MSP"
        "speartext"
        ))

|#

(om::fill-library '(("Alans" nil nil (mult-1k test2 RemoveNth) nil) ;;This will give the same of the sub folder, and also what functions will be listed 
	  	    ("foo" nil  nil (test2) nil))) ;;These names will come from the source code from the sources folder.

;;There doesn't seem to be a limit to how many folders and subfolders you can create, but the more you add the better you need to layout your code (Rozalie's Tristan library is a great example a good layout) .  


;==================================================
