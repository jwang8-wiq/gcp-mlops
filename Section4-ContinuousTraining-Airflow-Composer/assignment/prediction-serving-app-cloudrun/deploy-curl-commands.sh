docker build -t roi_model_serving .

docker tag roi_model_serving gcr.io/buoyant-ceiling-402604/roi_model_serving

docker push gcr.io/buoyant-ceiling-402604/roi_model_serving

gcloud run deploy roi-model-inference --image  gcr.io/buoyant-ceiling-402604/roi_model_serving --region us-central1

