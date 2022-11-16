# Senior DevOps Engineer - technical interview

## Testing goals
- With this test, we want to see your ability to create an entire infrastructure from scratch as well as your skills in cloud engineering, automation and as a system administrator.

## The task
- We want to containerise and deploy `hello.py` to your choice of cloud provider listed below with one of their managed container solutions (eg: EKS or ECS), we want a secure isolated environment, and we want to run multiple containers on an instance.

## The solution
- In your solution, please emphasise on readability, maintainability and DevOps methodologies. We expect a clear way to recreate your setup.
- A Docker container running our Flask application.
- The infrastructure provider should be AWS, GCP or Azure.
- Use an infrastructure as code tool of choice (Terraform, Ansible, Cloudformation etc) as the configuration management tool including any Dockerfiles and scripts.
- Make sure to include a README.md with clear instructions, so we can run your code.
- A CI/CD spec file using your choice of CI tool (Jenkins, GitLab or Bamboo).
- A clean bare minimum working infrastructure is preferred than a full-blown solution pieced together with scissors, rope and duct tape. Do not skip security considerations.

## When you are finished
- Submit your solution to a GitHub repository and send us a link.
- Make sure your README tells us how to run it.
- Please fork this repo so that you are tested against the test that you started with, as this test may change.

## Bonus points
- If you can setup a Git branching strategy.
- If you can document all aspects of your code, in the README and within the code itself.
- If you can provide a PNG diagram of your infrastructure.
