FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN plant_genome create-db
RUN plant_genome populate-db
RUN plant_genome add-user -u admin -p admin
EXPOSE 5000
CMD ["plant_genome", "run"]
