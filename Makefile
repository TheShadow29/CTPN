all:
	cython src/utils/cpu_nms.pyx
	gcc -shared -pthread -fPIC -fwrapv -O2 -Wall -fno-strict-aliasing \
		-I/usr/include/python2.7 \
		-I/home/arka_s/internship_files/Viterbi-Internship/my_proj/local/lib/python2.7/site-packages/numpy/core/include \
		-o src/utils/cpu_nms.so src/utils/cpu_nms.c
	rm -rf src/utils/cpu_nms.c
