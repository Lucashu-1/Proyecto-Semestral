FROM tensorflow/tensorflow:latest

RUN pip install jupyter pandas matplotlib scikit-learn

WORKDIR /notebooks

COPY  . ./notebooks

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
