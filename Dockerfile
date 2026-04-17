Here’s a clean, end-to-end summary of what you did and why it worked—focused only on the **Docker image + certificate + JFrog CLI fix**.

---

# 🧩 1. Initial Problem

Your pipeline was failing with:

```text
tls: failed to verify certificate: x509: certificate signed by unknown authority
```

👉 Meaning:

* Container **did not trust your internal Artifactory SSL cert**
* JFrog CLI couldn’t connect securely

---

# 🔍 2. Root Cause Identified

You verified using:

```bash
openssl s_client -showcerts -connect artifactory.jfrog.sbi:443 </dev/null
```

### Output showed:

* Server cert → `*.jfrog.sbi`
* Intermediate → `SBI-CA`
* Root → `SBI-RCA` (self-signed)

👉 Key issue:

```text
self signed certificate in certificate chain
```

✔️ This means:

> Root CA (SBI-RCA) was NOT trusted inside container

---

# 🛠️ 3. What We Fixed

Instead of using a **single certificate**, we created a **full certificate chain bundle**.

---

## ✅ Created: `jfrog-chain.crt`

Combined **ALL 3 certs in correct order**:

```text
1. Server cert (*.jfrog.sbi)
2. Intermediate CA (SBI-CA)
3. Root CA (SBI-RCA)
```

👉 This is critical. Without full chain → TLS always fails.

---

# 🐳 4. Dockerfile We Used (Final Working Version)

```dockerfile
FROM registry.dev.sbiepay.sbi:8443/ubi9/gradle-8.9-jdk-21:v6

# Add JFrog CLI
COPY jf /usr/local/bin/jf
RUN chmod +x /usr/local/bin/jf

# Add full certificate chain
COPY jfrog-chain.crt /etc/pki/ca-trust/source/anchors/jfrog.crt

# Update OS trust store
RUN update-ca-trust extract

# Verify JFrog CLI
RUN jf --version
```

---

# ⚙️ 5. Build & Push Commands Used

### Build image:

```bash
podman build -t gradle-8.9-jdk-21-jfrog:v9 .
```

### Tag:

```bash
podman tag gradle-8.9-jdk-21-jfrog:v9 \
artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21:v9
```

### Login:

```bash
podman login artifactory.jfrog.sbi:443
```

### Push:

```bash
podman push artifactory.jfrog.sbi:443/itepaypg-sbiepay2-docker-local/custom-ci/gradle-8.9-jdk-21:v9
```

---

# 🧪 6. Validation Steps (Very Important)

Inside container:

```bash
podman run -it gradle-8.9-jdk-21-jfrog:v9 bash
```

### Test TLS:

```bash
curl -v https://artifactory.jfrog.sbi/artifactory/api/system/ping
```

Expected:

```text
HTTP/1.1 200 OK
```

---

# ✅ 7. Pipeline Result After Fix

```text
jf rt ping → OK
```

👉 Confirms:

* TLS issue resolved ✅
* Certificate trusted ✅
* JFrog CLI working ✅

---

# ⚠️ 8. What Did NOT Work Earlier

### ❌ Using only server cert:

```dockerfile
COPY jfrog.crt ...
```

👉 Failed because:

* Missing CA chain
* Root CA not trusted

---

### ❌ Using `update-ca-trust force-enable`

* Not needed in RHEL/UBI 9
* Deprecated

---

# 🧠 9. Key Learnings (Important)

### 🔑 1. Always use FULL chain

```text
Server → Intermediate → Root
```

---

### 🔑 2. Error meaning:

```text
x509: certificate signed by unknown authority
```

👉 Always means:

> Root CA not trusted

---

### 🔑 3. Container trust store path (RHEL/UBI)

```text
/etc/pki/ca-trust/source/anchors/
```

---

### 🔑 4. Apply trust:

```bash
update-ca-trust extract
```

---

# 🧾 Final Outcome

| Component         | Status      |
| ----------------- | ----------- |
| Docker image      | ✅ Built     |
| JFrog CLI         | ✅ Installed |
| Certificate chain | ✅ Fixed     |
| TLS errors        | ✅ Resolved  |
| `jf rt ping`      | ✅ Working   |

---

# 🚀 What Happened Next (for context)

After fixing this, your next failure:

```text
Spring Boot plugin not found
```

👉 That is **completely separate** (Gradle plugin repo issue, not Docker/cert).

---

# 🎯 One-line Summary

> You fixed the pipeline by extending the base Gradle image, adding JFrog CLI, and correctly installing the **full SSL certificate chain (server + intermediate + root)** into the container trust store.

---

If you want, I can convert this into:
✅ Internal documentation
✅ Confluence page format
✅ Reusable base image standard for your org

Just tell me 👍
