[0KRunning with gitlab-runner 17.9.2 (14c5775c)[0;m
[0K  on dc_runner_79 6v7R1SqDv, system ID: s_37748334dac5[0;m
[0K[36;1mResolving secrets[0;m[0;m
section_start:1776426865:prepare_executor
[0K[0K[36;1mPreparing the "docker" executor[0;m[0;m
[0KUsing Docker executor with image artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21:v9 ...[0;m
[0KUsing helper image:  artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2  (overridden, default would be  registry.gitlab.com/gitlab-org/gitlab-runner/gitlab-runner-helper:x86_64-v17.9.2 )[0;m
[0KUsing locally found image version due to "if-not-present" pull policy[0;m
[0KUsing docker image sha256:4511164d4b592f8cb69c7ffe5cb2df5d1909c1e7924081721495a61e4b03f657 for artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2 with digest artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper@sha256:47dfd72820e9c3b93c84dcdc2e689ba1236880b4c01de59bbf0a26f9e72b2a35 ...[0;m
[0KUsing helper image:  artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2  (overridden, default would be  registry.gitlab.com/gitlab-org/gitlab-runner/gitlab-runner-helper:x86_64-v17.9.2 )[0;m
[0KUsing docker image sha256:4511164d4b592f8cb69c7ffe5cb2df5d1909c1e7924081721495a61e4b03f657 for artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2 with digest artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper@sha256:47dfd72820e9c3b93c84dcdc2e689ba1236880b4c01de59bbf0a26f9e72b2a35 ...[0;m
[0KUsing locally found image version due to "if-not-present" pull policy[0;m
[0KUsing docker image sha256:1c12bafef325dad326c28ce6751e1c6b35452fa88010daa52879f1ba4c2a3ffd for artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21:v9 with digest artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21@sha256:1082edaa00f230cebeb999ad14b2ec5aac1ddb681c743b83b05935409d9f68b1 ...[0;m
section_end:1776426866:prepare_executor
[0Ksection_start:1776426866:prepare_script
[0K[0K[36;1mPreparing environment[0;m[0;m
[0KUsing helper image:  artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2  (overridden, default would be  registry.gitlab.com/gitlab-org/gitlab-runner/gitlab-runner-helper:x86_64-v17.9.2 )[0;m
[0KUsing docker image sha256:4511164d4b592f8cb69c7ffe5cb2df5d1909c1e7924081721495a61e4b03f657 for artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper:x86_64-v17.9.2 with digest artifactory.jfrog.sbi:443/dso-base-image/gitlab-runner-helper/gitlab-runner-helper@sha256:47dfd72820e9c3b93c84dcdc2e689ba1236880b4c01de59bbf0a26f9e72b2a35 ...[0;m
Running on runner-6v7r1sqdv-project-1960-concurrent-0 via PE3DSOPGRUNNERS5...
section_end:1776426867:prepare_script
[0Ksection_start:1776426867:get_sources
[0K[0K[36;1mGetting source from Git repository[0;m[0;m
[32;1mFetching changes with git depth set to 20...[0;m
Initialized empty Git repository in /builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.git/
[32;1mCreated fresh repository.[0;m
[32;1mChecking out 34dfac91 as detached HEAD (ref is feature_ci)...[0;m

[32;1mSkipping Git submodules setup[0;m
section_end:1776426870:get_sources
[0Ksection_start:1776426870:step_script
[0K[0K[36;1mExecuting "step_script" stage of the job script[0;m[0;m
[0KUsing docker image sha256:1c12bafef325dad326c28ce6751e1c6b35452fa88010daa52879f1ba4c2a3ffd for artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21:v9 with digest artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21@sha256:1082edaa00f230cebeb999ad14b2ec5aac1ddb681c743b83b05935409d9f68b1 ...[0;m
[32;1m$ jf config add \ # collapsed multi-line command[0;m
11:54:31 [Warn] failed while trying to check latest JFrog CLI version: couldn't get latest JFrog CLI latest version info from GitHub API: Get "https://api.github.com/repos/jfrog/jfrog-cli/releases/latest": dial tcp: lookup api.github.com on 10.0.2.3:53: no such host
[32;1m$ jf config use epay-server[0;m
11:54:31 [Info] Using server ID 'epay-server' ([MASKED])
[32;1m$ jf rt ping[0;m
OK
[32;1m$ gradle build --debug[0;m
2026-04-17T11:54:32.871+0000 [INFO] [org.gradle.internal.nativeintegration.services.NativeServices] Initialized native services in: /root/.gradle/native
2026-04-17T11:54:32.943+0000 [INFO] [org.gradle.internal.nativeintegration.services.NativeServices] Initialized jansi services in: /root/.gradle/native
2026-04-17T11:54:32.981+0000 [LIFECYCLE] [org.gradle.launcher.cli.WelcomeMessageAction] 
2026-04-17T11:54:32.981+0000 [LIFECYCLE] [org.gradle.launcher.cli.WelcomeMessageAction] Welcome to Gradle 8.9!
2026-04-17T11:54:32.984+0000 [LIFECYCLE] [org.gradle.launcher.cli.WelcomeMessageAction] 
2026-04-17T11:54:32.984+0000 [LIFECYCLE] [org.gradle.launcher.cli.WelcomeMessageAction] Here are the highlights of this release:
2026-04-17T11:54:32.984+0000 [LIFECYCLE] [org.gradle.launcher.cli.WelcomeMessageAction]  - Enhanced Error and Warning Messages
 - IDE Integration Improvements
 - Daemon JVM Information
2026-04-17T11:54:32.984+0000 [LIFECYCLE] [org.gradle.launcher.cli.WelcomeMessageAction] 
2026-04-17T11:54:32.984+0000 [LIFECYCLE] [org.gradle.launcher.cli.WelcomeMessageAction] For more details see https://docs.gradle.org/8.9/release-notes.html
2026-04-17T11:54:32.984+0000 [LIFECYCLE] [org.gradle.launcher.cli.WelcomeMessageAction] 
2026-04-17T11:54:32.987+0000 [LIFECYCLE] [org.gradle.launcher.cli.DebugLoggerWarningAction] 
#############################################################################
   WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING

   Debug level logging will leak security sensitive information!

   For more details, please refer to https://docs.gradle.org/8.9/userguide/logging.html#sec:debug_security in the Gradle documentation.
#############################################################################

2026-04-17T11:54:33.076+0000 [INFO] [org.gradle.internal.jvm.inspection.DefaultJvmMetadataDetector] Received JVM installation metadata from '/usr/lib/jvm/java-21-openjdk-21.0.5.0.11-2.el9.x86_64': {JAVA_HOME=/usr/lib/jvm/java-21-openjdk-21.0.5.0.11-2.el9.x86_64, JAVA_VERSION=21.0.5, JAVA_VENDOR=Red Hat, Inc., RUNTIME_NAME=OpenJDK Runtime Environment, RUNTIME_VERSION=21.0.5+11-LTS, VM_NAME=OpenJDK 64-Bit Server VM, VM_VERSION=21.0.5+11-LTS, VM_VENDOR=Red Hat, Inc., OS_ARCH=amd64}
2026-04-17T11:54:33.299+0000 [DEBUG] [org.gradle.launcher.daemon.client.DaemonClient] Executing build ad911e79-a775-444f-ab31-464922b3d566 in daemon client {pid=46}
2026-04-17T11:54:33.305+0000 [DEBUG] [org.gradle.internal.remote.internal.inet.InetAddresses] Adding IP addresses for network interface eth0
2026-04-17T11:54:33.305+0000 [DEBUG] [org.gradle.internal.remote.internal.inet.InetAddresses] Is this a loopback interface? false
2026-04-17T11:54:33.305+0000 [DEBUG] [org.gradle.internal.remote.internal.inet.InetAddresses] Adding remote address /172.17.0.2
2026-04-17T11:54:33.305+0000 [DEBUG] [org.gradle.internal.remote.internal.inet.InetAddresses] Adding IP addresses for network interface lo
2026-04-17T11:54:33.306+0000 [DEBUG] [org.gradle.internal.remote.internal.inet.InetAddresses] Is this a loopback interface? true
2026-04-17T11:54:33.306+0000 [DEBUG] [org.gradle.internal.remote.internal.inet.InetAddresses] Adding loopback address /0:0:0:0:0:0:0:1%lo
2026-04-17T11:54:33.306+0000 [DEBUG] [org.gradle.internal.remote.internal.inet.InetAddresses] Adding loopback address /127.0.0.1
2026-04-17T11:54:33.332+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Waiting to acquire shared lock on daemon addresses registry.
2026-04-17T11:54:33.336+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Lock acquired on daemon addresses registry.
2026-04-17T11:54:33.337+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Releasing lock on daemon addresses registry.
2026-04-17T11:54:33.339+0000 [DEBUG] [org.gradle.launcher.daemon.registry.PersistentDaemonRegistry] Getting daemon stop events
2026-04-17T11:54:33.340+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Waiting to acquire shared lock on daemon addresses registry.
2026-04-17T11:54:33.341+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Lock acquired on daemon addresses registry.
2026-04-17T11:54:33.341+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Releasing lock on daemon addresses registry.
2026-04-17T11:54:33.341+0000 [INFO] [org.gradle.launcher.daemon.registry.PersistentDaemonRegistry] Removing 0 daemon stop events from registry
2026-04-17T11:54:33.345+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Waiting to acquire exclusive lock on daemon addresses registry.
2026-04-17T11:54:33.347+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Lock acquired on daemon addresses registry.
2026-04-17T11:54:33.347+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Releasing lock on daemon addresses registry.
2026-04-17T11:54:33.352+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Waiting to acquire exclusive lock on daemon addresses registry.
2026-04-17T11:54:33.353+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Lock acquired on daemon addresses registry.
2026-04-17T11:54:33.358+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Releasing lock on daemon addresses registry.
2026-04-17T11:54:33.360+0000 [LIFECYCLE] [org.gradle.launcher.daemon.client.DefaultDaemonConnector] Starting a Gradle Daemon (subsequent builds will be faster)
2026-04-17T11:54:33.468+0000 [DEBUG] [org.gradle.launcher.daemon.client.DefaultDaemonStarter] Using daemon args: [/usr/lib/jvm/java-21-openjdk-21.0.5.0.11-2.el9.x86_64/bin/java, --add-opens=java.base/java.util=ALL-UNNAMED, --add-opens=java.base/java.lang=ALL-UNNAMED, --add-opens=java.base/java.lang.invoke=ALL-UNNAMED, --add-opens=java.prefs/java.util.prefs=ALL-UNNAMED, --add-exports=jdk.compiler/com.sun.tools.javac.api=ALL-UNNAMED, --add-exports=jdk.compiler/com.sun.tools.javac.util=ALL-UNNAMED, --add-opens=java.base/java.nio.charset=ALL-UNNAMED, --add-opens=java.base/java.net=ALL-UNNAMED, --add-opens=java.base/java.util.concurrent.atomic=ALL-UNNAMED, -XX:MaxMetaspaceSize=384m, -XX:+HeapDumpOnOutOfMemoryError, -Xms256m, -Xmx512m, -Dfile.encoding=UTF-8, -Duser.country, -Duser.language=en, -Duser.variant, -cp, /opt/gradle/lib/gradle-daemon-main-8.9.jar, -javaagent:/opt/gradle/lib/agents/gradle-instrumentation-agent-8.9.jar]
2026-04-17T11:54:33.474+0000 [DEBUG] [org.gradle.launcher.daemon.client.DefaultDaemonStarter] Starting daemon process: workingDir = /root/.gradle/daemon/8.9, daemonArgs: [/usr/lib/jvm/java-21-openjdk-21.0.5.0.11-2.el9.x86_64/bin/java, --add-opens=java.base/java.util=ALL-UNNAMED, --add-opens=java.base/java.lang=ALL-UNNAMED, --add-opens=java.base/java.lang.invoke=ALL-UNNAMED, --add-opens=java.prefs/java.util.prefs=ALL-UNNAMED, --add-exports=jdk.compiler/com.sun.tools.javac.api=ALL-UNNAMED, --add-exports=jdk.compiler/com.sun.tools.javac.util=ALL-UNNAMED, --add-opens=java.base/java.nio.charset=ALL-UNNAMED, --add-opens=java.base/java.net=ALL-UNNAMED, --add-opens=java.base/java.util.concurrent.atomic=ALL-UNNAMED, -XX:MaxMetaspaceSize=384m, -XX:+HeapDumpOnOutOfMemoryError, -Xms256m, -Xmx512m, -Dfile.encoding=UTF-8, -Duser.country, -Duser.language=en, -Duser.variant, -cp, /opt/gradle/lib/gradle-daemon-main-8.9.jar, -javaagent:/opt/gradle/lib/agents/gradle-instrumentation-agent-8.9.jar, org.gradle.launcher.daemon.bootstrap.GradleDaemon, 8.9]
2026-04-17T11:54:33.494+0000 [INFO] [org.gradle.process.internal.DefaultExecHandle] Starting process 'Gradle build daemon'. Working directory: /root/.gradle/daemon/8.9 Command: /usr/lib/jvm/java-21-openjdk-21.0.5.0.11-2.el9.x86_64/bin/java --add-opens=java.base/java.util=ALL-UNNAMED --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/java.lang.invoke=ALL-UNNAMED --add-opens=java.prefs/java.util.prefs=ALL-UNNAMED --add-exports=jdk.compiler/com.sun.tools.javac.api=ALL-UNNAMED --add-exports=jdk.compiler/com.sun.tools.javac.util=ALL-UNNAMED --add-opens=java.base/java.nio.charset=ALL-UNNAMED --add-opens=java.base/java.net=ALL-UNNAMED --add-opens=java.base/java.util.concurrent.atomic=ALL-UNNAMED -XX:MaxMetaspaceSize=384m -XX:+HeapDumpOnOutOfMemoryError -Xms256m -Xmx512m -Dfile.encoding=UTF-8 -Duser.country -Duser.language=en -Duser.variant -cp /opt/gradle/lib/gradle-daemon-main-8.9.jar -javaagent:/opt/gradle/lib/agents/gradle-instrumentation-agent-8.9.jar org.gradle.launcher.daemon.bootstrap.GradleDaemon 8.9
2026-04-17T11:54:33.495+0000 [DEBUG] [org.gradle.process.internal.DefaultExecHandle] Changing state to: STARTING
2026-04-17T11:54:33.499+0000 [DEBUG] [org.gradle.process.internal.DefaultExecHandle] Waiting until process started: Gradle build daemon.
2026-04-17T11:54:33.526+0000 [DEBUG] [org.gradle.process.internal.DefaultExecHandle] Changing state to: STARTED
2026-04-17T11:54:33.526+0000 [DEBUG] [org.gradle.process.internal.ExecHandleRunner] waiting until streams are handled...
2026-04-17T11:54:33.526+0000 [INFO] [org.gradle.process.internal.DefaultExecHandle] Successfully started process 'Gradle build daemon'
2026-04-17T11:54:33.526+0000 [DEBUG] [org.gradle.launcher.daemon.client.DefaultDaemonStarter] Gradle daemon process is starting. Waiting for the daemon to detach...
2026-04-17T11:54:33.526+0000 [DEBUG] [org.gradle.launcher.daemon.bootstrap.DaemonOutputConsumer] Starting consuming the daemon process output.
2026-04-17T11:54:35.631+0000 [DEBUG] [org.gradle.launcher.daemon.bootstrap.DaemonOutputConsumer] daemon out: Daemon started. About to close the streams. Daemon details: 0100023739002463663031663732302d303831652d343733612d613864652d3830626331393539373437336bfe16a006ce44e58191d83f34d2f7a70000a04d00000001000000047f000001002a2f726f6f742f2e677261646c652f6461656d6f6e2f382e392f6461656d6f6e2d37392e6f75742e6c6f67
2026-04-17T11:54:35.632+0000 [DEBUG] [org.gradle.process.internal.DefaultExecHandle] Changing state to: DETACHED
2026-04-17T11:54:35.632+0000 [DEBUG] [org.gradle.process.internal.DefaultExecHandle] Process 'Gradle build daemon' finished with exit value 0 (state: DETACHED)
2026-04-17T11:54:35.632+0000 [DEBUG] [org.gradle.launcher.daemon.client.DefaultDaemonStarter] Gradle daemon process is now detached.
2026-04-17T11:54:35.636+0000 [INFO] [org.gradle.launcher.daemon.client.DefaultDaemonStarter] An attempt to start the daemon took 2.161 secs.
2026-04-17T11:54:35.637+0000 [DEBUG] [org.gradle.launcher.daemon.client.DefaultDaemonConnector] Started Gradle daemon DaemonStartupInfo{pid=79, uid=cf01f720-081e-473a-a8de-80bc19597473, address=[6bfe16a0-06ce-44e5-8191-d83f34d2f7a7 port:41037, addresses:[/127.0.0.1]], diagnostics={pid=79, daemonLog=/root/.gradle/daemon/8.9/daemon-79.out.log}}
2026-04-17T11:54:35.639+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Waiting to acquire shared lock on daemon addresses registry.
2026-04-17T11:54:35.639+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Lock acquired on daemon addresses registry.
2026-04-17T11:54:35.641+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Releasing lock on daemon addresses registry.
2026-04-17T11:54:35.642+0000 [DEBUG] [org.gradle.internal.remote.internal.inet.TcpOutgoingConnector] Attempting to connect to [6bfe16a0-06ce-44e5-8191-d83f34d2f7a7 port:41037, addresses:[/127.0.0.1]].
2026-04-17T11:54:35.642+0000 [DEBUG] [org.gradle.internal.remote.internal.inet.TcpOutgoingConnector] Trying to connect to address /127.0.0.1.
2026-04-17T11:54:35.647+0000 [DEBUG] [org.gradle.internal.remote.internal.inet.TcpOutgoingConnector] Connected to address /127.0.0.1:41037.
2026-04-17T11:54:35.656+0000 [DEBUG] [org.gradle.launcher.daemon.client.DaemonClient] Connected to daemon DaemonInfo{pid=79, address=[6bfe16a0-06ce-44e5-8191-d83f34d2f7a7 port:41037, addresses:[/127.0.0.1]], state=Busy, lastBusy=1776426875620, context=DefaultDaemonContext[uid=cf01f720-081e-473a-a8de-80bc19597473,javaHome=/usr/lib/jvm/java-21-openjdk-21.0.5.0.11-2.el9.x86_64,javaVersion=21,daemonRegistryDir=/root/.gradle/daemon,pid=79,idleTimeout=10800000,priority=NORMAL,applyInstrumentationAgent=true,nativeServicesMode=ENABLED,daemonOpts=--add-opens=java.base/java.util=ALL-UNNAMED,--add-opens=java.base/java.lang=ALL-UNNAMED,--add-opens=java.base/java.lang.invoke=ALL-UNNAMED,--add-opens=java.prefs/java.util.prefs=ALL-UNNAMED,--add-exports=jdk.compiler/com.sun.tools.javac.api=ALL-UNNAMED,--add-exports=jdk.compiler/com.sun.tools.javac.util=ALL-UNNAMED,--add-opens=java.base/java.nio.charset=ALL-UNNAMED,--add-opens=java.base/java.net=ALL-UNNAMED,--add-opens=java.base/java.util.concurrent.atomic=ALL-UNNAMED,-XX:MaxMetaspaceSize=384m,-XX:+HeapDumpOnOutOfMemoryError,-Xms256m,-Xmx512m,-Dfile.encoding=UTF-8,-Duser.country,-Duser.language=en,-Duser.variant]}. Dispatching request Build{id=ad911e79-a775-444f-ab31-464922b3d566, currentDir=/builds/itepaypg-sbiepay2/application/backend/epay_admin_service}.
2026-04-17T11:54:35.656+0000 [DEBUG] [org.gradle.launcher.daemon.client.DaemonClientConnection] thread 1: dispatching class org.gradle.launcher.daemon.protocol.Build
2026-04-17T11:54:35.717+0000 [DEBUG] [org.gradle.launcher.daemon.client.DaemonClient] Received result org.gradle.launcher.daemon.protocol.BuildStarted@7a8fa663 from daemon DaemonInfo{pid=79, address=[6bfe16a0-06ce-44e5-8191-d83f34d2f7a7 port:41037, addresses:[/127.0.0.1]], state=Busy, lastBusy=1776426875620, context=DefaultDaemonContext[uid=cf01f720-081e-473a-a8de-80bc19597473,javaHome=/usr/lib/jvm/java-21-openjdk-21.0.5.0.11-2.el9.x86_64,javaVersion=21,daemonRegistryDir=/root/.gradle/daemon,pid=79,idleTimeout=10800000,priority=NORMAL,applyInstrumentationAgent=true,nativeServicesMode=ENABLED,daemonOpts=--add-opens=java.base/java.util=ALL-UNNAMED,--add-opens=java.base/java.lang=ALL-UNNAMED,--add-opens=java.base/java.lang.invoke=ALL-UNNAMED,--add-opens=java.prefs/java.util.prefs=ALL-UNNAMED,--add-exports=jdk.compiler/com.sun.tools.javac.api=ALL-UNNAMED,--add-exports=jdk.compiler/com.sun.tools.javac.util=ALL-UNNAMED,--add-opens=java.base/java.nio.charset=ALL-UNNAMED,--add-opens=java.base/java.net=ALL-UNNAMED,--add-opens=java.base/java.util.concurrent.atomic=ALL-UNNAMED,-XX:MaxMetaspaceSize=384m,-XX:+HeapDumpOnOutOfMemoryError,-Xms256m,-Xmx512m,-Dfile.encoding=UTF-8,-Duser.country,-Duser.language=en,-Duser.variant]} (build should be starting).
2026-04-17T11:54:35.731+0000 [INFO] [org.gradle.launcher.daemon.server.exec.LogToClient] The client will now receive all logging from the daemon (pid: 79). The daemon log file: /root/.gradle/daemon/8.9/daemon-79.out.log
2026-04-17T11:54:35.735+0000 [INFO] [org.gradle.launcher.daemon.server.exec.LogAndCheckHealth] Starting build in new daemon [memory: 512 MiB]
2026-04-17T11:54:35.738+0000 [DEBUG] [org.gradle.launcher.daemon.server.exec.ExecuteBuild] The daemon has started executing the build.
2026-04-17T11:54:35.739+0000 [DEBUG] [org.gradle.launcher.daemon.server.exec.ExecuteBuild] Executing build with daemon context: DefaultDaemonContext[uid=cf01f720-081e-473a-a8de-80bc19597473,javaHome=/usr/lib/jvm/java-21-openjdk-21.0.5.0.11-2.el9.x86_64,javaVersion=21,daemonRegistryDir=/root/.gradle/daemon,pid=79,idleTimeout=10800000,priority=NORMAL,applyInstrumentationAgent=true,nativeServicesMode=ENABLED,daemonOpts=--add-opens=java.base/java.util=ALL-UNNAMED,--add-opens=java.base/java.lang=ALL-UNNAMED,--add-opens=java.base/java.lang.invoke=ALL-UNNAMED,--add-opens=java.prefs/java.util.prefs=ALL-UNNAMED,--add-exports=jdk.compiler/com.sun.tools.javac.api=ALL-UNNAMED,--add-exports=jdk.compiler/com.sun.tools.javac.util=ALL-UNNAMED,--add-opens=java.base/java.nio.charset=ALL-UNNAMED,--add-opens=java.base/java.net=ALL-UNNAMED,--add-opens=java.base/java.util.concurrent.atomic=ALL-UNNAMED,-XX:MaxMetaspaceSize=384m,-XX:+HeapDumpOnOutOfMemoryError,-Xms256m,-Xmx512m,-Dfile.encoding=UTF-8,-Duser.country,-Duser.language=en,-Duser.variant]
2026-04-17T11:54:36.100+0000 [DEBUG] [org.gradle.cache.internal.DefaultCacheCoordinator] Creating new cache for file-access, path /root/.gradle/caches/journal-1/file-access.bin, access org.gradle.cache.internal.DefaultCacheCoordinator@d6dc5ab
2026-04-17T11:54:36.111+0000 [DEBUG] [org.gradle.cache.internal.DefaultInMemoryCacheDecoratorFactory] Creating in-memory store for cache /root/.gradle/caches/journal-1/file-access.bin (max size: 4700)
2026-04-17T11:54:36.114+0000 [DEBUG] [org.gradle.cache.internal.LockOnDemandCrossProcessCacheAccess] Acquiring file lock for journal cache (/root/.gradle/caches/journal-1)
2026-04-17T11:54:36.118+0000 [DEBUG] [org.gradle.cache.internal.locklistener.DefaultFileLockContentionHandler] Starting file lock listener thread.
2026-04-17T11:54:36.118+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Waiting to acquire exclusive lock on journal cache (/root/.gradle/caches/journal-1).
2026-04-17T11:54:36.120+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Lock acquired on journal cache (/root/.gradle/caches/journal-1).
2026-04-17T11:54:36.151+0000 [DEBUG] [org.gradle.cache.internal.DefaultCacheCoordinator] Creating new cache for resourceHashesCache, path /root/.gradle/caches/8.9/fileHashes/resourceHashesCache.bin, access org.gradle.cache.internal.DefaultCacheCoordinator@7ed7b2fa
2026-04-17T11:54:36.152+0000 [DEBUG] [org.gradle.cache.internal.DefaultInMemoryCacheDecoratorFactory] Creating in-memory store for cache /root/.gradle/caches/8.9/fileHashes/resourceHashesCache.bin (max size: 190500)
2026-04-17T11:54:36.153+0000 [DEBUG] [org.gradle.cache.internal.LockOnDemandCrossProcessCacheAccess] Acquiring file lock for file hash cache (/root/.gradle/caches/8.9/fileHashes)
2026-04-17T11:54:36.155+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Waiting to acquire exclusive lock on file hash cache (/root/.gradle/caches/8.9/fileHashes).
2026-04-17T11:54:36.156+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Lock acquired on file hash cache (/root/.gradle/caches/8.9/fileHashes).
2026-04-17T11:54:36.178+0000 [DEBUG] [org.gradle.cache.internal.DefaultCacheCoordinator] Creating new cache for fileHashes, path /root/.gradle/caches/8.9/fileHashes/fileHashes.bin, access org.gradle.cache.internal.DefaultCacheCoordinator@7ed7b2fa
2026-04-17T11:54:36.179+0000 [DEBUG] [org.gradle.cache.internal.DefaultInMemoryCacheDecoratorFactory] Creating in-memory store for cache /root/.gradle/caches/8.9/fileHashes/fileHashes.bin (max size: 190500)
2026-04-17T11:54:36.280+0000 [INFO] [org.gradle.internal.work.DefaultWorkerLeaseService] Using 8 worker leases.
2026-04-17T11:54:36.313+0000 [DEBUG] [org.gradle.internal.resources.AbstractTrackedResourceLock] Daemon worker: acquired lock on worker lease
2026-04-17T11:54:36.320+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Run build' started
2026-04-17T11:54:36.597+0000 [INFO] [org.gradle.internal.jvm.inspection.DefaultJvmMetadataDetector] Received JVM installation metadata from '/usr/lib/jvm/java-21-openjdk-21.0.5.0.11-2.el9.x86_64': {JAVA_HOME=/usr/lib/jvm/java-21-openjdk-21.0.5.0.11-2.el9.x86_64, JAVA_VERSION=21.0.5, JAVA_VENDOR=Red Hat, Inc., RUNTIME_NAME=OpenJDK Runtime Environment, RUNTIME_VERSION=21.0.5+11-LTS, VM_NAME=OpenJDK 64-Bit Server VM, VM_VERSION=21.0.5+11-LTS, VM_VENDOR=Red Hat, Inc., OS_ARCH=amd64}
2026-04-17T11:54:36.804+0000 [DEBUG] [org.gradle.cache.internal.DefaultCacheCoordinator] Creating new cache for fileHashes, path /builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/8.9/fileHashes/fileHashes.bin, access org.gradle.cache.internal.DefaultCacheCoordinator@3a88c2bc
2026-04-17T11:54:36.805+0000 [DEBUG] [org.gradle.cache.internal.DefaultInMemoryCacheDecoratorFactory] Creating in-memory store for cache /builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/8.9/fileHashes/fileHashes.bin (max size: 190500)
2026-04-17T11:54:36.806+0000 [DEBUG] [org.gradle.cache.internal.LockOnDemandCrossProcessCacheAccess] Acquiring file lock for file hash cache (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/8.9/fileHashes)
2026-04-17T11:54:36.808+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Waiting to acquire exclusive lock on file hash cache (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/8.9/fileHashes).
2026-04-17T11:54:36.809+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Lock acquired on file hash cache (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/8.9/fileHashes).
2026-04-17T11:54:36.819+0000 [DEBUG] [org.gradle.cache.internal.DefaultCacheCoordinator] Creating new cache for outputFiles, path /builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/buildOutputCleanup/outputFiles.bin, access org.gradle.cache.internal.DefaultCacheCoordinator@188cddd9
2026-04-17T11:54:36.821+0000 [DEBUG] [org.gradle.cache.internal.DefaultInMemoryCacheDecoratorFactory] Creating in-memory store for cache /builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/buildOutputCleanup/outputFiles.bin (max size: 47600)
2026-04-17T11:54:36.822+0000 [DEBUG] [org.gradle.cache.internal.LockOnDemandCrossProcessCacheAccess] Acquiring file lock for Build Output Cleanup Cache (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/buildOutputCleanup)
2026-04-17T11:54:36.823+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Waiting to acquire exclusive lock on Build Output Cleanup Cache (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/buildOutputCleanup).
2026-04-17T11:54:36.824+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Lock acquired on Build Output Cleanup Cache (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/buildOutputCleanup).
2026-04-17T11:54:36.880+0000 [DEBUG] [org.gradle.cache.internal.DefaultCacheCoordinator] Creating new cache for resourceHashesCache, path /builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/8.9/fileHashes/resourceHashesCache.bin, access org.gradle.cache.internal.DefaultCacheCoordinator@3a88c2bc
2026-04-17T11:54:36.882+0000 [DEBUG] [org.gradle.cache.internal.DefaultInMemoryCacheDecoratorFactory] Creating in-memory store for cache /builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/8.9/fileHashes/resourceHashesCache.bin (max size: 381000)
2026-04-17T11:54:37.027+0000 [INFO] [org.gradle.tooling.internal.provider.FileSystemWatchingBuildActionRunner] Watching the file system is configured to be enabled if available
2026-04-17T11:54:37.028+0000 [DEBUG] [org.gradle.tooling.internal.provider.FileSystemWatchingBuildActionRunner] Watching the file system computed to be enabled if available
2026-04-17T11:54:37.030+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Build started for file system watching' started
2026-04-17T11:54:37.035+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected fuse.fuse-overlayfs: / from fuse-overlayfs (remote: false)
2026-04-17T11:54:37.036+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected proc: /proc from proc (remote: false)
2026-04-17T11:54:37.036+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected tmpfs: /dev from tmpfs (remote: false)
2026-04-17T11:54:37.037+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devpts: /dev/pts from devpts (remote: false)
2026-04-17T11:54:37.037+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected sysfs: /sys from sysfs (remote: false)
2026-04-17T11:54:37.038+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected cgroup2: /sys/fs/cgroup from cgroup (remote: false)
2026-04-17T11:54:37.039+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected mqueue: /dev/mqueue from mqueue (remote: false)
2026-04-17T11:54:37.039+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected tmpfs: /dev/shm from shm (remote: false)
2026-04-17T11:54:37.040+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected xfs: /builds from /dev/mapper/rhel-home (remote: false)
2026-04-17T11:54:37.040+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected xfs: /cache from /dev/mapper/vg_runner-lv_data (remote: false)
2026-04-17T11:54:37.041+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected xfs: /opt/step-runner from /dev/mapper/rhel-home (remote: false)
2026-04-17T11:54:37.041+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected xfs: /etc/resolv.conf from /dev/mapper/rhel-home (remote: false)
2026-04-17T11:54:37.042+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected xfs: /etc/hostname from /dev/mapper/rhel-home (remote: false)
2026-04-17T11:54:37.042+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected xfs: /etc/hosts from /dev/mapper/rhel-home (remote: false)
2026-04-17T11:54:37.043+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected xfs: /gitrunner_data/node_modules_16/node_modules from /dev/mapper/vg_runner-lv_data (remote: false)
2026-04-17T11:54:37.043+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected xfs: /root/.m2/repository from /dev/mapper/vg_runner-lv_data (remote: false)
2026-04-17T11:54:37.044+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected xfs: /root/.m2/settings.xml from /dev/mapper/vg_runner-lv_data (remote: false)
2026-04-17T11:54:37.044+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/autofs from devtmpfs (remote: false)
2026-04-17T11:54:37.045+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/bsg/0:0:0:0 from devtmpfs (remote: false)
2026-04-17T11:54:37.045+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/bsg/0:0:1:0 from devtmpfs (remote: false)
2026-04-17T11:54:37.046+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/bsg/0:0:2:0 from devtmpfs (remote: false)
2026-04-17T11:54:37.047+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/bsg/3:0:0:0 from devtmpfs (remote: false)
2026-04-17T11:54:37.047+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/0/cpuid from devtmpfs (remote: false)
2026-04-17T11:54:37.048+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/0/msr from devtmpfs (remote: false)
2026-04-17T11:54:37.048+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/1/cpuid from devtmpfs (remote: false)
2026-04-17T11:54:37.049+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/1/msr from devtmpfs (remote: false)
2026-04-17T11:54:37.049+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/2/cpuid from devtmpfs (remote: false)
2026-04-17T11:54:37.049+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/2/msr from devtmpfs (remote: false)
2026-04-17T11:54:37.050+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/3/cpuid from devtmpfs (remote: false)
2026-04-17T11:54:37.050+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/3/msr from devtmpfs (remote: false)
2026-04-17T11:54:37.051+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/4/cpuid from devtmpfs (remote: false)
2026-04-17T11:54:37.051+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/4/msr from devtmpfs (remote: false)
2026-04-17T11:54:37.052+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/5/cpuid from devtmpfs (remote: false)
2026-04-17T11:54:37.052+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/5/msr from devtmpfs (remote: false)
2026-04-17T11:54:37.053+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/6/cpuid from devtmpfs (remote: false)
2026-04-17T11:54:37.053+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/6/msr from devtmpfs (remote: false)
2026-04-17T11:54:37.054+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/7/cpuid from devtmpfs (remote: false)
2026-04-17T11:54:37.054+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu/7/msr from devtmpfs (remote: false)
2026-04-17T11:54:37.055+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/cpu_dma_latency from devtmpfs (remote: false)
2026-04-17T11:54:37.055+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/dm-0 from devtmpfs (remote: false)
2026-04-17T11:54:37.056+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/dm-1 from devtmpfs (remote: false)
2026-04-17T11:54:37.057+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/dm-2 from devtmpfs (remote: false)
2026-04-17T11:54:37.057+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/dm-3 from devtmpfs (remote: false)
2026-04-17T11:54:37.058+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/dm-4 from devtmpfs (remote: false)
2026-04-17T11:54:37.058+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/dm-5 from devtmpfs (remote: false)
2026-04-17T11:54:37.059+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/dma_heap/system from devtmpfs (remote: false)
2026-04-17T11:54:37.059+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/dri/card0 from devtmpfs (remote: false)
2026-04-17T11:54:37.060+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/dri/renderD128 from devtmpfs (remote: false)
2026-04-17T11:54:37.060+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/dsa from devtmpfs (remote: false)
2026-04-17T11:54:37.061+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/dsa_bmdev from devtmpfs (remote: false)
2026-04-17T11:54:37.062+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/dsa_ssl from devtmpfs (remote: false)
2026-04-17T11:54:37.062+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/fb0 from devtmpfs (remote: false)
2026-04-17T11:54:37.063+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/full from devtmpfs (remote: false)
2026-04-17T11:54:37.063+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/fuse from devtmpfs (remote: false)
2026-04-17T11:54:37.064+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/hpet from devtmpfs (remote: false)
2026-04-17T11:54:37.065+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/hwrng from devtmpfs (remote: false)
2026-04-17T11:54:37.065+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/input/event0 from devtmpfs (remote: false)
2026-04-17T11:54:37.066+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/input/event1 from devtmpfs (remote: false)
2026-04-17T11:54:37.066+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/input/event2 from devtmpfs (remote: false)
2026-04-17T11:54:37.067+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/input/event3 from devtmpfs (remote: false)
2026-04-17T11:54:37.067+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/input/event4 from devtmpfs (remote: false)
2026-04-17T11:54:37.068+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/input/mice from devtmpfs (remote: false)
2026-04-17T11:54:37.069+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/input/mouse0 from devtmpfs (remote: false)
2026-04-17T11:54:37.069+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/input/mouse1 from devtmpfs (remote: false)
2026-04-17T11:54:37.070+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/isst_interface from devtmpfs (remote: false)
2026-04-17T11:54:37.070+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/kmsg from devtmpfs (remote: false)
2026-04-17T11:54:37.071+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/loop-control from devtmpfs (remote: false)
2026-04-17T11:54:37.071+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/mapper/control from devtmpfs (remote: false)
2026-04-17T11:54:37.072+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/mcelog from devtmpfs (remote: false)
2026-04-17T11:54:37.072+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/mem from devtmpfs (remote: false)
2026-04-17T11:54:37.072+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/net/tun from devtmpfs (remote: false)
2026-04-17T11:54:37.073+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/null from devtmpfs (remote: false)
2026-04-17T11:54:37.073+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/nvram from devtmpfs (remote: false)
2026-04-17T11:54:37.074+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/port from devtmpfs (remote: false)
2026-04-17T11:54:37.074+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/ppp from devtmpfs (remote: false)
2026-04-17T11:54:37.075+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/random from devtmpfs (remote: false)
2026-04-17T11:54:37.075+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/rfkill from devtmpfs (remote: false)
2026-04-17T11:54:37.076+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/rtc0 from devtmpfs (remote: false)
2026-04-17T11:54:37.077+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/sda from devtmpfs (remote: false)
2026-04-17T11:54:37.077+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/sda1 from devtmpfs (remote: false)
2026-04-17T11:54:37.077+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/sda2 from devtmpfs (remote: false)
2026-04-17T11:54:37.078+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/sda3 from devtmpfs (remote: false)
2026-04-17T11:54:37.078+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/sdb from devtmpfs (remote: false)
2026-04-17T11:54:37.079+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/sdc from devtmpfs (remote: false)
2026-04-17T11:54:37.079+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/sdc1 from devtmpfs (remote: false)
2026-04-17T11:54:37.080+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/sg0 from devtmpfs (remote: false)
2026-04-17T11:54:37.081+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/sg1 from devtmpfs (remote: false)
2026-04-17T11:54:37.082+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/sg2 from devtmpfs (remote: false)
2026-04-17T11:54:37.083+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/sg3 from devtmpfs (remote: false)
2026-04-17T11:54:37.084+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/snapshot from devtmpfs (remote: false)
2026-04-17T11:54:37.085+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/snd/seq from devtmpfs (remote: false)
2026-04-17T11:54:37.086+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/snd/timer from devtmpfs (remote: false)
2026-04-17T11:54:37.087+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/sr0 from devtmpfs (remote: false)
2026-04-17T11:54:37.088+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty from devtmpfs (remote: false)
2026-04-17T11:54:37.090+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty0 from devtmpfs (remote: false)
2026-04-17T11:54:37.090+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty1 from devtmpfs (remote: false)
2026-04-17T11:54:37.091+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty10 from devtmpfs (remote: false)
2026-04-17T11:54:37.092+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty11 from devtmpfs (remote: false)
2026-04-17T11:54:37.092+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty12 from devtmpfs (remote: false)
2026-04-17T11:54:37.092+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty13 from devtmpfs (remote: false)
2026-04-17T11:54:37.093+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty14 from devtmpfs (remote: false)
2026-04-17T11:54:37.093+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty15 from devtmpfs (remote: false)
2026-04-17T11:54:37.094+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty16 from devtmpfs (remote: false)
2026-04-17T11:54:37.094+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty17 from devtmpfs (remote: false)
2026-04-17T11:54:37.095+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty18 from devtmpfs (remote: false)
2026-04-17T11:54:37.096+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty19 from devtmpfs (remote: false)
2026-04-17T11:54:37.096+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty2 from devtmpfs (remote: false)
2026-04-17T11:54:37.097+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty20 from devtmpfs (remote: false)
2026-04-17T11:54:37.097+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty21 from devtmpfs (remote: false)
2026-04-17T11:54:37.098+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty22 from devtmpfs (remote: false)
2026-04-17T11:54:37.099+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty23 from devtmpfs (remote: false)
2026-04-17T11:54:37.099+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty24 from devtmpfs (remote: false)
2026-04-17T11:54:37.100+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty25 from devtmpfs (remote: false)
2026-04-17T11:54:37.100+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty26 from devtmpfs (remote: false)
2026-04-17T11:54:37.101+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty27 from devtmpfs (remote: false)
2026-04-17T11:54:37.101+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty28 from devtmpfs (remote: false)
2026-04-17T11:54:37.101+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty29 from devtmpfs (remote: false)
2026-04-17T11:54:37.102+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty3 from devtmpfs (remote: false)
2026-04-17T11:54:37.103+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty30 from devtmpfs (remote: false)
2026-04-17T11:54:37.103+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty31 from devtmpfs (remote: false)
2026-04-17T11:54:37.104+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty32 from devtmpfs (remote: false)
2026-04-17T11:54:37.104+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty33 from devtmpfs (remote: false)
2026-04-17T11:54:37.105+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty34 from devtmpfs (remote: false)
2026-04-17T11:54:37.105+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty35 from devtmpfs (remote: false)
2026-04-17T11:54:37.106+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty36 from devtmpfs (remote: false)
2026-04-17T11:54:37.106+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty37 from devtmpfs (remote: false)
2026-04-17T11:54:37.107+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty38 from devtmpfs (remote: false)
2026-04-17T11:54:37.107+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty39 from devtmpfs (remote: false)
2026-04-17T11:54:37.107+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty4 from devtmpfs (remote: false)
2026-04-17T11:54:37.108+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty40 from devtmpfs (remote: false)
2026-04-17T11:54:37.108+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty41 from devtmpfs (remote: false)
2026-04-17T11:54:37.109+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty42 from devtmpfs (remote: false)
2026-04-17T11:54:37.109+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty43 from devtmpfs (remote: false)
2026-04-17T11:54:37.110+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty44 from devtmpfs (remote: false)
2026-04-17T11:54:37.110+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty45 from devtmpfs (remote: false)
2026-04-17T11:54:37.111+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty46 from devtmpfs (remote: false)
2026-04-17T11:54:37.111+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty47 from devtmpfs (remote: false)
2026-04-17T11:54:37.112+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty48 from devtmpfs (remote: false)
2026-04-17T11:54:37.112+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty49 from devtmpfs (remote: false)
2026-04-17T11:54:37.113+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty5 from devtmpfs (remote: false)
2026-04-17T11:54:37.113+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty50 from devtmpfs (remote: false)
2026-04-17T11:54:37.114+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty51 from devtmpfs (remote: false)
2026-04-17T11:54:37.114+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty52 from devtmpfs (remote: false)
2026-04-17T11:54:37.115+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty53 from devtmpfs (remote: false)
2026-04-17T11:54:37.115+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty54 from devtmpfs (remote: false)
2026-04-17T11:54:37.116+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty55 from devtmpfs (remote: false)
2026-04-17T11:54:37.116+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty56 from devtmpfs (remote: false)
2026-04-17T11:54:37.116+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty57 from devtmpfs (remote: false)
2026-04-17T11:54:37.117+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty58 from devtmpfs (remote: false)
2026-04-17T11:54:37.117+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty59 from devtmpfs (remote: false)
2026-04-17T11:54:37.118+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty6 from devtmpfs (remote: false)
2026-04-17T11:54:37.118+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty60 from devtmpfs (remote: false)
2026-04-17T11:54:37.119+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty61 from devtmpfs (remote: false)
2026-04-17T11:54:37.119+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty62 from devtmpfs (remote: false)
2026-04-17T11:54:37.119+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty63 from devtmpfs (remote: false)
2026-04-17T11:54:37.120+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty7 from devtmpfs (remote: false)
2026-04-17T11:54:37.120+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty8 from devtmpfs (remote: false)
2026-04-17T11:54:37.121+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/tty9 from devtmpfs (remote: false)
2026-04-17T11:54:37.121+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/ttyS0 from devtmpfs (remote: false)
2026-04-17T11:54:37.122+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/ttyS1 from devtmpfs (remote: false)
2026-04-17T11:54:37.122+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/ttyS2 from devtmpfs (remote: false)
2026-04-17T11:54:37.123+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/ttyS3 from devtmpfs (remote: false)
2026-04-17T11:54:37.123+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/udmabuf from devtmpfs (remote: false)
2026-04-17T11:54:37.124+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/uhid from devtmpfs (remote: false)
2026-04-17T11:54:37.125+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/uinput from devtmpfs (remote: false)
2026-04-17T11:54:37.125+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/urandom from devtmpfs (remote: false)
2026-04-17T11:54:37.126+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/usbmon0 from devtmpfs (remote: false)
2026-04-17T11:54:37.126+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/userfaultfd from devtmpfs (remote: false)
2026-04-17T11:54:37.127+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/vcs from devtmpfs (remote: false)
2026-04-17T11:54:37.127+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/vcs1 from devtmpfs (remote: false)
2026-04-17T11:54:37.127+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/vcs2 from devtmpfs (remote: false)
2026-04-17T11:54:37.128+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/vcs3 from devtmpfs (remote: false)
2026-04-17T11:54:37.128+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/vcs4 from devtmpfs (remote: false)
2026-04-17T11:54:37.129+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/vcs5 from devtmpfs (remote: false)
2026-04-17T11:54:37.130+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/vcs6 from devtmpfs (remote: false)
2026-04-17T11:54:37.130+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/vcsa from devtmpfs (remote: false)
2026-04-17T11:54:37.131+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/vcsa1 from devtmpfs (remote: false)
2026-04-17T11:54:37.131+0000 [DEBUG] [org.gradle.internal.watch.vfs.impl.DefaultWatchableFileSystemDetector] Detected devtmpfs: /dev/vcsa2 from devtmpfs (remote: false)

2026-04-17T11:54:40.900+0000 [DEBUG] [org.apache.http.client.protocol.RequestAuthCache] Auth cache not set in the context
2026-04-17T11:54:40.902+0000 [DEBUG] [org.apache.http.impl.conn.PoolingHttpClientConnectionManager] Connection request: [route: {tls}->http://serverswg.sbi.co.in:9090->https://plugins.gradle.org:443][total available: 0; route allocated: 0 of 20; total allocated: 0 of 20]
2026-04-17T11:54:40.917+0000 [DEBUG] [org.apache.http.impl.conn.PoolingHttpClientConnectionManager] Connection leased: [id: 0][route: {tls}->http://serverswg.sbi.co.in:9090->https://plugins.gradle.org:443][total available: 0; route allocated: 1 of 20; total allocated: 1 of 20]
2026-04-17T11:54:40.919+0000 [DEBUG] [org.apache.http.impl.execchain.MainClientExec] Opening connection {tls}->http://serverswg.sbi.co.in:9090->https://plugins.gradle.org:443
2026-04-17T11:54:40.927+0000 [DEBUG] [org.apache.http.impl.conn.DefaultHttpClientConnectionOperator] Connecting to serverswg.sbi.co.in/10.191.191.39:9090
2026-04-17T11:54:40.930+0000 [DEBUG] [org.apache.http.impl.conn.DefaultHttpClientConnectionOperator] Connection established 172.17.0.2:56120<->10.191.191.39:9090
2026-04-17T11:54:40.952+0000 [DEBUG] [org.apache.http.impl.conn.DefaultManagedHttpClientConnection] http-outgoing-0: Close connection
2026-04-17T11:54:40.953+0000 [DEBUG] [org.apache.http.impl.execchain.MainClientExec] CONNECT refused by proxy: HTTP/1.1 403 Forbidden
2026-04-17T11:54:40.954+0000 [DEBUG] [org.apache.http.impl.execchain.MainClientExec] Connection discarded
2026-04-17T11:54:40.955+0000 [DEBUG] [org.apache.http.impl.conn.PoolingHttpClientConnectionManager] Connection released: [id: 0][route: {tls}->http://serverswg.sbi.co.in:9090->https://plugins.gradle.org:443][total available: 0; route allocated: 0 of 20; total allocated: 0 of 20]
2026-04-17T11:54:40.960+0000 [INFO] [org.gradle.internal.resource.transport.http.HttpClientHelper] Failed to get resource: GET. [HTTP HTTP/1.1 403 Forbidden: https://plugins.gradle.org/m2/org/springframework/boot/org.springframework.boot.gradle.plugin/3.3.10/org.springframework.boot.gradle.plugin-3.3.10.pom)]
2026-04-17T11:54:40.961+0000 [LIFECYCLE] [org.gradle.internal.operations.DefaultBuildOperationRunner] 
2026-04-17T11:54:40.961+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Completing Build operation 'Download https://plugins.gradle.org/m2/org/springframework/boot/org.springframework.boot.gradle.plugin/3.3.10/org.springframework.boot.gradle.plugin-3.3.10.pom'
2026-04-17T11:54:40.994+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Completing Build operation 'Resolve dependencies of detachedConfiguration1'
2026-04-17T11:54:40.999+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Resolve files of configuration 'detachedConfiguration1'' started
2026-04-17T11:54:41.001+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Completing Build operation 'Resolve files of configuration 'detachedConfiguration1''
2026-04-17T11:54:41.005+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Completing Build operation 'Apply build file 'build.gradle' to root project 'epay_admin_service''
2026-04-17T11:54:41.008+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Notify afterEvaluate listeners of :' started
2026-04-17T11:54:41.010+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Completing Build operation 'Notify afterEvaluate listeners of :'
2026-04-17T11:54:40.879+0000 [LIFECYCLE] [org.gradle.internal.logging.progress.ProgressLoggerFactory] 
2026-04-17T11:54:40.879+0000 [LIFECYCLE] [org.gradle.internal.logging.progress.ProgressLoggerFactory] > Configure project :
2026-04-17T11:54:40.962+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Download https://plugins.gradle.org/m2/org/springframework/boot/org.springframework.boot.gradle.plugin/3.3.10/org.springframework.boot.gradle.plugin-3.3.10.pom' completed
2026-04-17T11:54:40.978+0000 [DEBUG] [org.gradle.api.internal.artifacts.ivyservice.resolveengine.oldresult.TransientConfigurationResultsBuilder] Flushing resolved configuration data in Binary store in /root/.gradle/.tmp/gradle5530564779288234907.bin. Wrote root 3.
2026-04-17T11:54:40.995+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Resolve dependencies of detachedConfiguration1' completed
2026-04-17T11:54:41.001+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Resolve files of configuration 'detachedConfiguration1'' completed
2026-04-17T11:54:41.006+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Apply build file 'build.gradle' to root project 'epay_admin_service'' completed
2026-04-17T11:54:41.006+0000 [DEBUG] [org.gradle.configuration.project.BuildScriptProcessor] Timing: Running the build script took 2.138 secs
2026-04-17T11:54:41.011+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Notify afterEvaluate listeners of :' completed
2026-04-17T11:54:41.011+0000 [DEBUG] [org.gradle.internal.resources.AbstractTrackedResourceLock] Daemon worker: released lock on state of build :
2026-04-17T11:54:41.012+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Completing Build operation 'Configure project :'
2026-04-17T11:54:41.012+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Configure project :' completed
2026-04-17T11:54:41.013+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Completing Build operation 'Configure build'
2026-04-17T11:54:41.014+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Configure build' completed
2026-04-17T11:54:41.015+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Finish root build tree' started
2026-04-17T11:54:41.023+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Completing Build operation 'Finish root build tree'
2026-04-17T11:54:41.024+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Finish root build tree' completed
2026-04-17T11:54:41.034+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] 
2026-04-17T11:54:41.035+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] FAILURE: Build failed with an exception.
2026-04-17T11:54:41.035+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] 
2026-04-17T11:54:41.035+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] * Where:
2026-04-17T11:54:41.036+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] Build file '/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/build.gradle' line: 3
2026-04-17T11:54:41.036+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] 
2026-04-17T11:54:41.037+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] * What went wrong:
2026-04-17T11:54:41.037+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] Plugin [id: 'org.springframework.boot', version: '3.3.10'] was not found in any of the following sources:
2026-04-17T11:54:41.038+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] 
2026-04-17T11:54:41.038+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] - Gradle Core Plugins (plugin is not in 'org.gradle' namespace)
2026-04-17T11:54:41.038+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] - Included Builds (No included builds contain this plugin)
2026-04-17T11:54:41.039+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] - Plugin Repositories (could not resolve plugin artifact 'org.springframework.boot:org.springframework.boot.gradle.plugin:3.3.10')
2026-04-17T11:54:41.039+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter]   Searched in the following repositories:
2026-04-17T11:54:41.040+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter]     Gradle Central Plugin Repository
2026-04-17T11:54:41.040+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] 
2026-04-17T11:54:41.040+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] * Try:
2026-04-17T11:54:41.041+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] > Run with --stacktrace option to get the stack trace.
2026-04-17T11:54:41.042+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] > Run with --scan to get full insights.
2026-04-17T11:54:41.042+0000 [ERROR] [org.gradle.internal.buildevents.BuildExceptionReporter] > Get more help at https://help.gradle.org.
2026-04-17T11:54:41.043+0000 [ERROR] [org.gradle.internal.buildevents.BuildResultLogger] 
2026-04-17T11:54:41.043+0000 [ERROR] [org.gradle.internal.buildevents.BuildResultLogger] BUILD FAILED in 8s
2026-04-17T11:54:41.047+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Build finished for file system watching' started
2026-04-17T11:54:41.049+0000 [INFO] [org.gradle.internal.watch.registry.impl.WatchableHierarchies] Some of the file system contents retained in the virtual file system are on file systems that Gradle doesn't support watching. The relevant state was discarded to ensure changes to these locations are properly detected. You can override this by explicitly enabling file system watching.
2026-04-17T11:54:41.052+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Completing Build operation 'Build finished for file system watching'
2026-04-17T11:54:41.053+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Build finished for file system watching' completed
2026-04-17T11:54:41.060+0000 [DEBUG] [org.gradle.cache.internal.LockOnDemandCrossProcessCacheAccess] Releasing file lock for cache directory md-supplier (/root/.gradle/caches/8.9/md-supplier)
2026-04-17T11:54:41.061+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Releasing lock on cache directory md-supplier (/root/.gradle/caches/8.9/md-supplier).
2026-04-17T11:54:41.062+0000 [DEBUG] [org.gradle.cache.internal.LockOnDemandCrossProcessCacheAccess] Releasing file lock for Build Output Cleanup Cache (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/buildOutputCleanup)
2026-04-17T11:54:41.063+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Releasing lock on Build Output Cleanup Cache (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/buildOutputCleanup).
2026-04-17T11:54:41.065+0000 [DEBUG] [org.gradle.cache.internal.LockOnDemandCrossProcessCacheAccess] Releasing file lock for cache directory md-rule (/root/.gradle/caches/8.9/md-rule)
2026-04-17T11:54:41.065+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Releasing lock on cache directory md-rule (/root/.gradle/caches/8.9/md-rule).
2026-04-17T11:54:41.069+0000 [DEBUG] [org.gradle.api.internal.artifacts.ivyservice.resolveengine.store.CachedStoreFactory] Resolution result cache closed. Cache reads: 0, disk reads: 0 (avg: 0.0 secs, total: 0.0 secs)
2026-04-17T11:54:41.071+0000 [DEBUG] [org.gradle.api.internal.artifacts.ivyservice.resolveengine.store.CachedStoreFactory] Resolution result cache closed. Cache reads: 0, disk reads: 0 (avg: 0.0 secs, total: 0.0 secs)
2026-04-17T11:54:41.072+0000 [DEBUG] [org.gradle.api.internal.artifacts.ivyservice.resolveengine.store.ResolutionResultsStoreFactory] Deleted 2 resolution results binary files in 0.003 secs
2026-04-17T11:54:41.074+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Completing Build operation 'Run build'
2026-04-17T11:54:41.075+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Run build' completed
2026-04-17T11:54:41.075+0000 [DEBUG] [org.gradle.internal.resources.AbstractTrackedResourceLock] Daemon worker: released lock on worker lease
2026-04-17T11:54:41.114+0000 [DEBUG] [org.gradle.deployment.internal.DefaultDeploymentRegistry] Stopping 0 deployment handles
2026-04-17T11:54:41.115+0000 [DEBUG] [org.gradle.deployment.internal.DefaultDeploymentRegistry] Stopped deployment handles
2026-04-17T11:54:41.116+0000 [DEBUG] [org.gradle.cache.internal.LockOnDemandCrossProcessCacheAccess] Releasing file lock for file hash cache (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/8.9/fileHashes)
2026-04-17T11:54:41.117+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Releasing lock on file hash cache (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/8.9/fileHashes).
2026-04-17T11:54:41.118+0000 [DEBUG] [org.gradle.cache.internal.LockOnDemandCrossProcessCacheAccess] Releasing file lock for checksums cache (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/8.9/checksums)
2026-04-17T11:54:41.119+0000 [DEBUG] [org.gradle.cache.internal.DefaultFileLockManager] Releasing lock on checksums cache (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/8.9/checksums).
2026-04-17T11:54:41.121+0000 [DEBUG] [org.gradle.cache.internal.DefaultCacheCoordinator] Cache VCS Checkout Cache (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/vcs-1) was closed 0 times.
2026-04-17T11:54:41.121+0000 [DEBUG] [org.gradle.cache.internal.DefaultCacheCoordinator] Cache VCS metadata (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/8.9/vcsMetadata) was closed 0 times.
2026-04-17T11:54:41.122+0000 [DEBUG] [org.gradle.cache.internal.DefaultCacheCoordinator] Cache dependencies-accessors (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/8.9/dependencies-accessors) was closed 0 times.
2026-04-17T11:54:41.123+0000 [DEBUG] [org.gradle.cache.internal.DefaultCacheCoordinator] Cache Compressed Files Expansion Cache (/builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle/8.9/expanded) was closed 0 times.
2026-04-17T11:54:41.125+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Deleting unused version-specific caches in /builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle' started
2026-04-17T11:54:41.138+0000 [DEBUG] [org.gradle.cache.internal.VersionSpecificCacheCleanupAction] Processed version-specific caches at /builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle for cleanup in 0.011 secs
2026-04-17T11:54:41.139+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Completing Build operation 'Deleting unused version-specific caches in /builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle'
2026-04-17T11:54:41.139+0000 [DEBUG] [org.gradle.internal.operations.DefaultBuildOperationRunner] Build operation 'Deleting unused version-specific caches in /builds/itepaypg-sbiepay2/application/backend/epay_admin_service/.gradle' completed
2026-04-17T11:54:41.148+0000 [DEBUG] [org.gradle.launcher.daemon.server.exec.ExecuteBuild] The daemon has finished executing the build.
2026-04-17T11:54:41.218+0000 [DEBUG] [org.gradle.launcher.daemon.client.DaemonClientConnection] thread 1: dispatching class org.gradle.launcher.daemon.protocol.CloseInput
2026-04-17T11:54:41.219+0000 [DEBUG] [org.gradle.launcher.daemon.client.DaemonClient] Received result Success[value=org.gradle.launcher.exec.BuildActionResult@5860f3d7] from daemon DaemonInfo{pid=79, address=[6bfe16a0-06ce-44e5-8191-d83f34d2f7a7 port:41037, addresses:[/127.0.0.1]], state=Busy, lastBusy=1776426875620, context=DefaultDaemonContext[uid=cf01f720-081e-473a-a8de-80bc19597473,javaHome=/usr/lib/jvm/java-21-openjdk-21.0.5.0.11-2.el9.x86_64,javaVersion=21,daemonRegistryDir=/root/.gradle/daemon,pid=79,idleTimeout=10800000,priority=NORMAL,applyInstrumentationAgent=true,nativeServicesMode=ENABLED,daemonOpts=--add-opens=java.base/java.util=ALL-UNNAMED,--add-opens=java.base/java.lang=ALL-UNNAMED,--add-opens=java.base/java.lang.invoke=ALL-UNNAMED,--add-opens=java.prefs/java.util.prefs=ALL-UNNAMED,--add-exports=jdk.compiler/com.sun.tools.javac.api=ALL-UNNAMED,--add-exports=jdk.compiler/com.sun.tools.javac.util=ALL-UNNAMED,--add-opens=java.base/java.nio.charset=ALL-UNNAMED,--add-opens=java.base/java.net=ALL-UNNAMED,--add-opens=java.base/java.util.concurrent.atomic=ALL-UNNAMED,-XX:MaxMetaspaceSize=384m,-XX:+HeapDumpOnOutOfMemoryError,-Xms256m,-Xmx512m,-Dfile.encoding=UTF-8,-Duser.country,-Duser.language=en,-Duser.variant]} (build should be done).
2026-04-17T11:54:41.219+0000 [DEBUG] [org.gradle.launcher.daemon.client.DaemonClientConnection] thread 1: dispatching class org.gradle.launcher.daemon.protocol.Finished
2026-04-17T11:54:41.219+0000 [DEBUG] [org.gradle.launcher.daemon.client.DaemonClientConnection] thread 1: connection stop
2026-04-17T11:54:41.220+0000 [LIFECYCLE] [org.gradle.launcher.cli.DebugLoggerWarningAction] 
#############################################################################
   WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING

   Debug level logging will leak security sensitive information!

   For more details, please refer to https://docs.gradle.org/8.9/userguide/logging.html#sec:debug_security in the Gradle documentation.
#############################################################################

section_end:1776426881:step_script
[0Ksection_start:1776426881:cleanup_file_variables
[0K[0K[36;1mCleaning up project directory and file based variables[0;m[0;m
section_end:1776426882:cleanup_file_variables
[0K[31;1mERROR: Job failed: exit code 1
[0;m
