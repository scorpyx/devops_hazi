FROM python:3.11.14-trixie
COPY scorpyx_hello.py .
COPY pyproject.toml .
RUN pip install .
CMD ["uwsgi", "--http", "0.0.0.0:8000", "-w", "scorpyx_hello:app"]
