# Assign storage permissions to the service account 
gcloud projects add-iam-policy-binding buoyant-ceiling-402604 \
--member=serviceAccount:895414066018-compute@developer.gserviceaccount.com --role=roles/storage.admin


gcloud projects add-iam-policy-binding buoyant-ceiling-402604 \
--member=serviceAccount:895414066018-compute@developer.gserviceaccount.com --role=roles/storage.objects.list