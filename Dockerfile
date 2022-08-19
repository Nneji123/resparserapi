FROM python:3.8.13-slim-bullseye

WORKDIR /app

RUN pip install --upgrade setuptools 

COPY . .

RUN pip install spacy==2.3.5\
    && pip install fastapi[all] resume_parser==0.8.4\ 
    && pip install https://github.com/explosion/spacy-models/releases/download/en_core_web_sm-2.3.1/en_core_web_sm-2.3.1.tar.gz \
    && pip install pyresparser\

    && python -m spacy download en_core_web_sm\
    && python -m nltk.downloader words\
    && python -m nltk.downloader stopwords\ 
    && python -m nltk.downloader punkt\
    && python -m nltk.downloader wordnet\
    && python -m nltk.downloader averaged_perceptron_tagger\
    && python -m nltk.downloader maxent_treebank_pos_tagger\
    && python -m nltk.downloader universal_tagset\
    && python -m nltk.downloader brown\
    && python -m nltk.downloader maxent_ne_chunker

EXPOSE 8000:8000


CMD uvicorn app:app --reload --host 0.0.0.0 --port 8000