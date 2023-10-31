# Step-1
docker build -t llm-summarize-word-docs .

# Push to Container Registry 
docker tag llm-summarize-word-docs gcr.io/buoyant-ceiling-402604/llm-summarize-word-docs
docker push gcr.io/buoyant-ceiling-402604/llm-summarize-word-docs

gcloud run deploy llm-summarize-word-docs --image gcr.io/buoyant-ceiling-402604/llm-summarize-word-docs --region us-central1
