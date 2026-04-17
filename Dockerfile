Running with gitlab-runner 17.9.2 (14c5775c)
  on dc_runner_55 Wz1c0kGRX, system ID: s_300da9d7588c
Resolving secrets
Preparing the "docker" executor
00:01
Using Docker executor with image artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21:v9 ...
Using helper image:  artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2  (overridden, default would be  registry.gitlab.com/gitlab-org/gitlab-runner/gitlab-runner-helper:x86_64-v17.9.2 )
Using locally found image version due to "if-not-present" pull policy
Using docker image sha256:4511164d4b592f8cb69c7ffe5cb2df5d1909c1e7924081721495a61e4b03f657 for artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2 with digest artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper@sha256:47dfd72820e9c3b93c84dcdc2e689ba1236880b4c01de59bbf0a26f9e72b2a35 ...
Using helper image:  artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2  (overridden, default would be  registry.gitlab.com/gitlab-org/gitlab-runner/gitlab-runner-helper:x86_64-v17.9.2 )
Using docker image sha256:4511164d4b592f8cb69c7ffe5cb2df5d1909c1e7924081721495a61e4b03f657 for artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2 with digest artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper@sha256:47dfd72820e9c3b93c84dcdc2e689ba1236880b4c01de59bbf0a26f9e72b2a35 ...
Using locally found image version due to "if-not-present" pull policy
Using docker image sha256:1c12bafef325dad326c28ce6751e1c6b35452fa88010daa52879f1ba4c2a3ffd for artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21:v9 with digest artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21@sha256:1082edaa00f230cebeb999ad14b2ec5aac1ddb681c743b83b05935409d9f68b1 ...
Preparing environment
00:01
Using helper image:  artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2  (overridden, default would be  registry.gitlab.com/gitlab-org/gitlab-runner/gitlab-runner-helper:x86_64-v17.9.2 )
Using docker image sha256:4511164d4b592f8cb69c7ffe5cb2df5d1909c1e7924081721495a61e4b03f657 for artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2 with digest artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper@sha256:47dfd72820e9c3b93c84dcdc2e689ba1236880b4c01de59bbf0a26f9e72b2a35 ...
Running on runner-wz1c0kgrx-project-1960-concurrent-0 via PE3DSOPGrunners4...
Getting source from Git repository
00:02
Fetching changes with git depth set to 20...
Initialized empty Git repository in /builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.git/
Created fresh repository.
Checking out 77ab79b1 as detached HEAD (ref is feature_ci)...
Skipping Git submodules setup
Executing "step_script" stage of the job script
00:09
Using docker image sha256:1c12bafef325dad326c28ce6751e1c6b35452fa88010daa52879f1ba4c2a3ffd for artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21:v9 with digest artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21@sha256:1082edaa00f230cebeb999ad14b2ec5aac1ddb681c743b83b05935409d9f68b1 ...
$ jf config add \ # collapsed multi-line command
12:07:19 [Warn] failed while trying to check latest JFrog CLI version: couldn't get latest JFrog CLI latest version info from GitHub API: Get "https://api.github.com/repos/jfrog/jfrog-cli/releases/latest": dial tcp: lookup api.github.com on 10.0.2.3:53: no such host
$ jf config use epay-server
12:07:19 [Info] Using server ID 'epay-server' ([MASKED])
$ jf rt ping
OK
$ pwd
/builds/itepaypg-sbiepay2/application/backend/epay_admin_service
$ ls -la
total 28
drwxrwxrwx 5 root root  161 Apr 17 12:07 .
drwxrwxrwx 4 root root   62 Apr 17 12:07 ..
drwxrwxrwx 6 root root  128 Apr 17 12:07 .git
-rw-rw-rw- 1 root root   58 Apr 17 12:07 .gitignore
-rw-rw-rw- 1 root root  210 Apr 17 12:07 .gitlab-ci.yml
-rw-rw-rw- 1 root root  466 Apr 17 12:07 Dockerfile
-rw-rw-rw- 1 root root 6226 Apr 17 12:07 README.md
-rw-rw-rw- 1 root root 2175 Apr 17 12:07 build.gradle
-rw-rw-rw- 1 root root  213 Apr 17 12:07 gradle.properties
drwxrwxrwx 2 root root   88 Apr 17 12:07 libs
drwxrwxrwx 3 root root   18 Apr 17 12:07 src
$ if [ -n "$VERSION" ]; then # collapsed multi-line command
version v-feature_ci-20260417120710
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
BUILD FAILED in 5s
Cleaning up project directory and file based variables
00:00
ERROR: Job failed: exit code 1




=====================================================================

Sharing below build.gradle 


plugins {
	id 'java'
	id 'org.springframework.boot' version "${spring_boot}"
	id 'io.spring.dependency-management' version "${dependency_plugin}"
}

group = 'com.epay.admin'
version = "${version}"

java {
	toolchain {
		languageVersion = JavaLanguageVersion.of(21)
	}
}

configurations {
	compileOnly {
		extendsFrom annotationProcessor
	}
}

repositories {
	// mavenCentral()
	flatDir {
		dirs "libs"
	}
	maven {
		url "https://artifactory.jfrog.sbi:443/artifactory/itepaypg-sbiepay2-gradle-virtual/"
		credentials(PasswordCredentials) {
            username = project.findProperty("gitlab.username")?: System.getenv("CI_USERNAME")
            password = project.findProperty("gitlab.token")?: System.getenv("CI_JOB_TOKEN")
        }
        authentication {
            basic(BasicAuthentication)
        }
	}
}

dependencies {
	implementation 'org.springframework.boot:spring-boot-starter-actuator'
	implementation 'org.springframework.boot:spring-boot-starter-data-jpa'
	implementation 'org.springframework.boot:spring-boot-starter-web'
	implementation "org.springdoc:springdoc-openapi-starter-webmvc-ui:${swagger}"
	implementation "com.oracle.database.jdbc:ojdbc11:${oracle_driver}"

    compileOnly 'org.projectlombok:lombok'
	annotationProcessor 'org.projectlombok:lombok'
	implementation "net.bytebuddy:byte-buddy:${bytebuddy}"
	implementation "org.modelmapper:modelmapper:${modelmapper}"
	implementation "javax.persistence:javax.persistence-api:${javax_persistence}"
	implementation 'org.springframework.boot:spring-boot-starter-validation'
	implementation 'org.liquibase:liquibase-core'

	//SBI Utilities
	implementation 'name:logging-service-1.0-SNAPSHOT'
	implementation 'name:cache-management-service-0.0.1'

	//Mapstruct
	implementation "org.mapstruct:mapstruct:${mapstruct}"
	annotationProcessor "org.mapstruct:mapstruct-processor:${mapstruct}"

	testImplementation 'org.springframework.boot:spring-boot-starter-test'
	testRuntimeOnly 'org.junit.platform:junit-platform-launcher'

	implementation "org.springframework.boot:spring-boot-starter-webflux"

}

tasks.named('test') {
	useJUnitPlatform()
}

bootJar {
	duplicatesStrategy(DuplicatesStrategy.EXCLUDE)
}
