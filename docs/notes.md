

```
Warning: `pre` execution is not supported for local action from './action-pipenv'
Run ./action-pipenv


/usr/bin/docker run
    --name pythonINPUT_PYTHON_VERSION_02f4e4
    --label 4cd98f
    --workdir /github/workspace
    --rm
    -e INPUT_PYTHON_VERSION
    -e HOME
    -e GITHUB_JOB
    -e GITHUB_REF
    -e GITHUB_SHA
    -e GITHUB_REPOSITORY
    -e GITHUB_REPOSITORY_OWNER
    -e GITHUB_RUN_ID
    -e GITHUB_RUN_NUMBER
    -e GITHUB_RETENTION_DAYS
    -e GITHUB_RUN_ATTEMPT
    -e GITHUB_ACTOR -e GITHUB_WORKFLOW -e GITHUB_HEAD_REF -e GITHUB_BASE_REF -e GITHUB_EVENT_NAME -e GITHUB_SERVER_URL -e GITHUB_API_URL -e GITHUB_GRAPHQL_URL -e GITHUB_REF_NAME -e GITHUB_REF_PROTECTED -e GITHUB_REF_TYPE -e GITHUB_WORKSPACE -e GITHUB_ACTION -e GITHUB_EVENT_PATH -e GITHUB_ACTION_REPOSITORY -e GITHUB_ACTION_REF -e GITHUB_PATH -e GITHUB_ENV -e GITHUB_STEP_SUMMARY -e RUNNER_OS -e RUNNER_ARCH -e RUNNER_NAME -e RUNNER_TOOL_CACHE -e RUNNER_TEMP -e RUNNER_WORKSPACE -e ACTIONS_RUNTIME_URL -e ACTIONS_RUNTIME_TOKEN -e ACTIONS_CACHE_URL -e GITHUB_ACTIONS=true
    -e CI=true
    --entrypoint "entrypoint.sh" -v "/var/run/docker.sock":"/var/run/docker.sock" -v "/home/runner/work/_temp/_github_home":"/github/home" -v "/home/runner/work/_temp/_github_workflow":"/github/workflow" -v "/home/runner/work/_temp/_runner_file_commands":"/github/file_commands" -v "/home/runner/work/hello-github-actions/hello-github-actions":"/github/workspace" python:$INPUT_PYTHON_VERSION
docker: invalid reference format.
See 'docker run --help'.
```


```
- name: Build and Push to DigitalOcean Container Registry
  uses: docker/build-push-action@v2
  with:
    context: ./user-service
    push: true
    tags: registry.digitalocean.com/xxx/xxx:latest
    build-args: NPM_TOKEN=${{secrets.NPM_ACCESS_TOKEN}}
```
