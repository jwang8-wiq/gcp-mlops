from google.cloud import aiplatform

PROJECT_ID = "buoyant-ceiling-402604"
REGION = "us-central1"
aiplatform.init(project=PROJECT_ID,location=REGION)

job = aiplatform.PipelineJob(
    display_name='trigger-coupon-model-pipeline',
    template_path="gs://buoyant-ceiling-402604-kubeflow-v1/compiled_pipelines/coupon-pipeline.json",
    pipeline_root="gs://buoyant-ceiling-402604-kubeflow-v1/coupon-pipeline-v1",
    enable_caching=False
)
job.submit()