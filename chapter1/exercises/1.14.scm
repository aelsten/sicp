;; tree of cc function calls using 11 cents (exluding the operation cc to make it more compact):
;;                                                                              ______________(11 5)_____________
;;                                                                             /                                  \
;;                                                     ___________________(11 4)__________                        (-39 5)
;;                                                    /                                   \
;;                          _____________________(11 3)____________________               (-14 4)
;;                         /                                               \
;;          __________(11 2)__________                                     (1 3)
;;         /                          \                                    /   \
;;    (11 1)                   _______(6 2)_______                     (1 2)   (-9 3)
;;    /   \                   /                   \                    /   \
;;(11 0)  (10 1)          (6 1)                   (1 2)            (1 1)   (-4 2)
;;        /   \           /   \                   /   \            /   \
;;    (10 0)  (9 1)   (6 0)   (5 1)           (1 1)   (-4 2)   (1 0)   (0 1)
;;            /   \           /   \           /   \
;;        (9 0)   (8 1)   (5 0)   (4 1)   (1 0)   (0 1)
;;                /   \           /   \
;;            (8 0)   (7 1)   (4 0)   (3 1)
;;                    /   \           /   \
;;                (7 0)   (6 1)   (3 0)   (2 1)
;;                        /  \            /   \
;;                    (6 0)   (5 1)   (2 0)   (1 1)
;;                            /   \           /   \
;;                        (5 0)   (4 1)   (1 0)   (0 1)
;;                                /   \
;;                            (4 0)  (3 1)
;;                                   /   \
;;                               (3 0)   (2 1)
;;                                       /   \
;;                                   (2 0)   (1 1)
;;                                           /   \
;;                                       (1 0)   (0 1)

;; Orders of growth of space:
;; For tree recursion space required is equal to the depth of the tree, which is kn, thus growth of space is O(n)

;; Orders of growth of number of steps:
;; 1. (cc n 1) takes 2*n+1 steps; thus it is O(n)
;; 2. (cc n 2) = (cc n 1) + (cc (- n 5) 2)
;; 3. (cc x 2) will be called approximately n/5 times, i.e. if the amount is 100 it will be called 20 times with the last call being (cc 0 2)
;; 4. Since each (cc n 1) is O(n); (cc n 2) becomes O(n*n/5) which simply becomes O(n^2)
;; 5. Similarly (cc n 5) can be argued to be O(n^5)
