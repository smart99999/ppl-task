# ppl-task
# Brief:
1. Create project github/gitlab with Dockerfile to create nginx image with 2 pages:
```
    / - "hello world"
    /auth - "hello world $USERNAME" - base auth
```
2. Add CI ( in my case - Github Actions, because i want to practice with this tools plus its free and i dont want to create Gitlab account or specified in picture) to all this building process with push builded image to Dockerhub (i choose Github Packages for obtain practice with this tool ).
3. Create ansible-playbook for setup bare metal server with docker and deploy the above builded nginx image.
Do it with ansible best practises and minimal requirements (as noticed in telegram comments).