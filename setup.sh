#!/bin/bash
pip install spacy==2.3.5 
pip install https://github.com/explosion/spacy-models/releases/download/en_core_web_sm-2.3.1/en_core_web_sm-2.3.1.tar.gz 
pip install pyresparser 

python -m spacy download en_core_web_sm 
python -m nltk.downloader words 
python -m nltk.downloader stopwords 
python -m nltk.downloader punkt 
python -m nltk.downloader wordnet
python -m nltk.downloader averaged_perceptron_tagger
python -m nltk.downloader maxent_treebank_pos_tagger
python -m nltk.downloader universal_tagset
python -m nltk.downloader brown
python -m nltk.downloader maxent_ne_chunker


uvicorn app:app --host=0.0.0.0 --port=${PORT:-5000}
#uvicorn app:app --reload --port 8000 --host 0.0.0.0
#gunicorn -w 1 -k uvicorn.workers.UvicornWorker app:app --bind 0.0.0.0:$PORT