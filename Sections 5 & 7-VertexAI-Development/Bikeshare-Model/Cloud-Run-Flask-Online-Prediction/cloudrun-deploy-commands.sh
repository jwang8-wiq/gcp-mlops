# Grant the necessary permissions to the cloud run Service Account : 
gcloud projects add-iam-policy-binding 895414066018 \
  --member serviceAccount:895414066018-compute@developer.gserviceaccount.com  \
  --role='roles/aiplatform.admin'

# Step-1
docker build -t bikeshare-online-predict .
# Push to Container Registry 
docker tag bikeshare-online-predict gcr.io/buoyant-ceiling-402604/bikeshare-online-predict
docker push gcr.io/buoyant-ceiling-402604/bikeshare-online-predict

gcloud run deploy bikeshare-online-predict --image  gcr.io/buoyant-ceiling-402604/bikeshare-online-predict --region us-central1