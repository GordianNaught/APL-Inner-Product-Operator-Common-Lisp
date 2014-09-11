APL-Inner-Product-Operator-Common-Lisp
======================================

The inner product (dyadic dot operator) from APL implemented as a higher-order function in Common Lisp

As is seen in the source, this can be used to implement things including matrix multiplication succinctly:

    (defun matrix-multiplication (a b)
      (funcall (inner-product #'+ #'*) a b))

#License

This software falls under the Creative Commons Attribution 4.0 International License.
