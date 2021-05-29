# Streamlit boilerplate

## Packaging stuff

### Run app in local

```
conda create --name streamlit python=3.8
conda activate streamlit
pip install streamlit
streamlit run main.py

```

### Build docker image

```
docker build -t ui .
docker run -d -p 8501:8501 ui
```

## Edit app

Change `main.py` and then go ahead with stuff.


## Subsequent steps
* Create registry
* Push image in registry
* Deploy app
* Check if everything is working or not
* Build CI pipeline (build and push)
* Build CD pipeline (deploy as app)

