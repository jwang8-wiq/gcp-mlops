# Create a New Service Account in GCP before executing the below gcloud commands    
gcloud projects add-iam-policy-binding buoyant-ceiling-402604 \
    --member=serviceAccount:vertexai-sa@buoyant-ceiling-402604.iam.gserviceaccount.com \
    --role=roles/aiplatform.customCodeServiceAgent

gcloud projects add-iam-policy-binding buoyant-ceiling-402604 \
    --member=serviceAccount:vertexai-sa@buoyant-ceiling-402604.iam.gserviceaccount.com \
    --role=roles/aiplatform.admin

gcloud projects add-iam-policy-binding buoyant-ceiling-402604 \
    --member=serviceAccount:vertexai-sa@buoyant-ceiling-402604.iam.gserviceaccount.com \
    --role=roles/storage.objectAdmin
