# Z3 install
FROM python:2.7.15-jessie
RUN git clone https://github.com/Z3Prover/z3.git && \
cd z3; python scripts/mk_make.py --python && \
cd build && \
make && \
make install;

# alle möglichen sachen install
RUN apt-get update;\
yes | apt-get install python-ply python-pygraphviz;\
yes | pip install pygraphviz;\
yes | pip install tarjan;\
yes | apt-get install python-tk tix;

# ivy install
RUN git clone https://github.com/Microsoft/ivy.git &&\
cd ivy; \
yes | python setup.py install

