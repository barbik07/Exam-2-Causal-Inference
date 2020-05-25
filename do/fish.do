use "C:\Users\barth\OneDrive\Documents\GitHub\Exam-2-Causal-Inference\data\fish"

gen lgq = log(quantity)

gen lgp = log(price)


ssc install outreg2

regress lgq lgp mon tues wed thurs
outreg2 using"C:\Users\barth\OneDrive\Documents\GitHub\Exam-2-Causal-Inference\tables\fish_table.doc", word append

ivregress 2sls lgq mon tues wed thurs (lgp = wave2)
outreg2 using"C:\Users\barth\OneDrive\Documents\GitHub\Exam-2-Causal-Inference\tables\fish_table.doc", word append

ivregress 2sls lgq mon tues wed thurs (lgp = speed3)
outreg2 using"C:\Users\barth\OneDrive\Documents\GitHub\Exam-2-Causal-Inference\tables\fish_table.doc", word append

regress lgp wave2
outreg2 using"C:\Users\barth\OneDrive\Documents\GitHub\Exam-2-Causal-Inference\tables\fish_iv.doc", word append

regress lgp speed3
outreg2 using"C:\Users\barth\OneDrive\Documents\GitHub\Exam-2-Causal-Inference\tables\fish_iv.doc", word append

