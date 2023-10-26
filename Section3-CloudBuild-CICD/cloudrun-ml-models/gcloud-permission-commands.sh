# Assign Service account user role to the service account 
gcloud projects add-iam-policy-binding buoyant-ceiling-402604 --member=serviceAccount:895414066018@cloudbuild.gserviceaccount.com --role=roles/storage.admin


# Assign Cloud Run role to the service account 
gcloud projects add-iam-policy-binding buoyant-ceiling-402604 --member=serviceAccount:895414066018@cloudbuild.gserviceaccount.com --role=roles/run.admin

# Command to run the build using cloudbuild.yaml
gcloud builds submit --region us-central1


