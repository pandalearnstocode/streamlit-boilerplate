FROM python:3.8.0-slim as builder
RUN apt-get update \
&& apt-get install gcc -y \
&& apt-get clean
COPY requirements.txt /app/requirements.txt
WORKDIR app
RUN pip install --user -r requirements.txt
COPY . /app
FROM python:3.8.0-slim as app
COPY --from=builder /root/.local /root/.local
COPY --from=builder /app/main.py /app/main.py
WORKDIR app
EXPOSE 8501
ENV PATH=/root/.local/bin:$PATH
EXPOSE 8501
ENTRYPOINT ["streamlit","run"]
CMD ["main.py"]