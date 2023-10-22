# Step-1
docker build -t demo-flask-app .

#Push to Docker Hub
docker tag demo-flask-app james1103/demo-flask-app:0.0.1
docker push james1103/demo-flask-app:0.0.1

# Push to Container Registry 
docker tag demo-flask-app gcr.io/buoyant-ceiling-402604/demo-flask-app
docker push gcr.io/buoyant-ceiling-402604/demo-flask-app

gcloud run deploy demo-flask-app --image gcr.io/buoyant-ceiling-402604/demo-flask-app --region us-central1


# Push to Artifact Registry 
docker tag demo-flask-app us-central1-docker.pkg.dev/buoyant-ceiling-402604/python-apps/demo-flask-app
docker push us-central1-docker.pkg.dev/buoyant-ceiling-402604/python-apps/demo-flask-app

gcloud run deploy demo-flask-app2 --image us-central1-docker.pkg.dev/buoyant-ceiling-402604/python-apps/demo-flask-app --region us-central1