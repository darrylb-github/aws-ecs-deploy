# aws-ecs-deploy

Deploys an ecs service by creating a new task definition based on the latest task definition for that service, then updating the service with that new task defintion

Single account:

    docker run -e AWS_ACCESS_KEY_ID=xxx -e AWS_SECRET_ACCESS_KEY=yyy -e AWS_REGION=us-east-1 hublogix/aws-ecs-deploy ecs-deploy cluster_name service_name image

Assuming role across multiple accounts:

    docker run -e AWS_ACCESS_KEY_ID=xxx -e AWS_SECRET_ACCESS_KEY=yyy -e AWS_REGION=us-east-1 hublogix/aws-ecs-deploy aws-assume-role account_id role_name ecs-deploy cluster_name service_name image
