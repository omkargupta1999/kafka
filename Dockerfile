Running with gitlab-runner 17.9.2 (14c5775c)
  on dc_runner_79 6v7R1SqDv, system ID: s_37748334dac5
Resolving secrets
Preparing the "docker" executor
00:08
Using Docker executor with image artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21:v9 ...
Using helper image:  artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2  (overridden, default would be  registry.gitlab.com/gitlab-org/gitlab-runner/gitlab-runner-helper:x86_64-v17.9.2 )
Using locally found image version due to "if-not-present" pull policy
Using docker image sha256:4511164d4b592f8cb69c7ffe5cb2df5d1909c1e7924081721495a61e4b03f657 for artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2 with digest artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper@sha256:47dfd72820e9c3b93c84dcdc2e689ba1236880b4c01de59bbf0a26f9e72b2a35 ...
Using helper image:  artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2  (overridden, default would be  registry.gitlab.com/gitlab-org/gitlab-runner/gitlab-runner-helper:x86_64-v17.9.2 )
Using docker image sha256:4511164d4b592f8cb69c7ffe5cb2df5d1909c1e7924081721495a61e4b03f657 for artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2 with digest artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper@sha256:47dfd72820e9c3b93c84dcdc2e689ba1236880b4c01de59bbf0a26f9e72b2a35 ...
Authenticating with credentials from $DOCKER_AUTH_CONFIG
Pulling docker image artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21:v9 ...
Using docker image sha256:1c12bafef325dad326c28ce6751e1c6b35452fa88010daa52879f1ba4c2a3ffd for artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21:v9 with digest artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21@sha256:1082edaa00f230cebeb999ad14b2ec5aac1ddb681c743b83b05935409d9f68b1 ...
Preparing environment
00:01
Using helper image:  artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2  (overridden, default would be  registry.gitlab.com/gitlab-org/gitlab-runner/gitlab-runner-helper:x86_64-v17.9.2 )
Using docker image sha256:4511164d4b592f8cb69c7ffe5cb2df5d1909c1e7924081721495a61e4b03f657 for artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2 with digest artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper@sha256:47dfd72820e9c3b93c84dcdc2e689ba1236880b4c01de59bbf0a26f9e72b2a35 ...
Running on runner-6v7r1sqdv-project-1960-concurrent-0 via PE3DSOPGRUNNERS5...
Getting source from Git repository
00:04
Fetching changes with git depth set to 20...
Initialized empty Git repository in /builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.git/
Created fresh repository.
Checking out 41dec50f as detached HEAD (ref is feature_ci)...
Skipping Git submodules setup
Executing "step_script" stage of the job script
00:14
Using docker image sha256:1c12bafef325dad326c28ce6751e1c6b35452fa88010daa52879f1ba4c2a3ffd for artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21:v9 with digest artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21@sha256:1082edaa00f230cebeb999ad14b2ec5aac1ddb681c743b83b05935409d9f68b1 ...
$ jf config add \ # collapsed multi-line command
09:35:26 [Warn] failed while trying to check latest JFrog CLI version: couldn't get latest JFrog CLI latest version info from GitHub API: Get "https://api.github.com/repos/jfrog/jfrog-cli/releases/latest": dial tcp: lookup api.github.com on 10.0.2.3:53: no such host
$ jf config use epay-server
09:35:26 [Info] Using server ID 'epay-server' ([MASKED])
$ jf rt ping
OK
$ gradle build —debug
Welcome to Gradle 8.9!
Here are the highlights of this release:
 - Enhanced Error and Warning Messages
 - IDE Integration Improvements
 - Daemon JVM Information
For more details see https://docs.gradle.org/8.9/release-notes.html
Starting a Gradle Daemon (subsequent builds will be faster)
FAILURE: Build failed with an exception.
* Where:
Build file '/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/build.gradle' line: 3
* What went wrong:
Plugin [id: 'org.springframework.boot', version: '3.3.10'] was not found in any of the following sources:
- Gradle Core Plugins (plugin is not in 'org.gradle' namespace)
- Included Builds (No included builds contain this plugin)
- Plugin Repositories (could not resolve plugin artifact 'org.springframework.boot:org.springframework.boot.gradle.plugin:3.3.10')
  Searched in the following repositories:
    Gradle Central Plugin Repository
* Try:
> Run with --stacktrace option to get the stack trace.
> Run with --info or --debug option to get more log output.
> Run with --scan to get full insights.
> Get more help at https://help.gradle.org.
BUILD FAILED in 10s
Cleaning up project directory and file based variables
00:00
ERROR: Job failed: exit code 1
