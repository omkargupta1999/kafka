Good — I inspected your **actual repo**, and now the issue is 100% confirmed.

---

## ❌ Exact Problem in Your Repo

From your `settings.gradle`:

```groovy
pluginManagement {
    repositories {
        mavenCentral()
    }
}
```

### 🔴 Why this fails in your environment

* `mavenCentral()` **DOES NOT host Gradle plugins**
* Spring Boot plugin is resolved from:

  ```
  https://plugins.gradle.org
  ```
* Your runner **has no internet / DNS access**
* So plugin resolution fails → exactly what you saw

---

## 🔍 Key Technical Insight

Gradle plugin resolution flow:

```
settings.gradle → pluginManagement.repositories
                ↓
plugins.gradle.org (default)
                ↓
FAIL (no internet)
```

👉 Your Artifactory is **NOT used at all for plugins**

---

## ✅ Correct Enterprise Fix (Based on Your Repo)

### 🔧 Fix your `settings.gradle` like this:

```groovy
pluginManagement {
    repositories {
        maven {
            url "https://artifactory.jfrog.sbi:443/artifactory/itepaypg-sbiepay2-gradle-virtual/"
            credentials {
                username = System.getenv("CI_USERNAME")
                password = System.getenv("CI_JOB_TOKEN")
            }
        }
        // REMOVE mavenCentral() (optional but recommended in restricted env)
    }
}

rootProject.name = 'epay_admin_service'
```

---

## ⚠️ Critical Dependency on Artifactory

Your Artifactory **must contain plugin artifacts**.

Specifically this must exist:

```text
org.springframework.boot:spring-boot-gradle-plugin:3.3.10
```

---

## 🔎 Validate This Immediately

Run from any machine with access:

```bash
curl -u user:token \
https://artifactory.jfrog.sbi/artifactory/itepaypg-sbiepay2-gradle-virtual/org/springframework/boot/spring-boot-gradle-plugin/3.3.10/
```

### If NOT found → Root cause confirmed

---

## 🛠️ If Plugin NOT Available in Artifactory

You have 2 options:

### Option 1 (Recommended – Bank standard)

Configure Artifactory:

* Add **remote repo → [https://plugins.gradle.org/m2](https://plugins.gradle.org/m2)**
* Include it in:

  ```
  itepaypg-sbiepay2-gradle-virtual
  ```

---

### Option 2 (Manual bootstrap)

Upload plugin manually into Artifactory (not scalable)

---

## ⚠️ Secondary Issue (Already Seen Earlier)

You also have:

```text
lookup api.github.com → no such host
```

This confirms:

* ❌ No internet DNS
* ✅ All builds must be fully internal (Artifactory-driven)

---

## ✅ Final Architecture (What Bank Wants)

```
GitLab Runner
     ↓
Gradle
     ↓
Plugin resolution → Artifactory (NOT internet)
Dependency resolution → Artifactory
```

---

## 🚀 Minimal Changes Required

### 1. Fix `settings.gradle` ✅ (MANDATORY)

### 2. Ensure plugin exists in Artifactory ✅ (MANDATORY)

---

## 🧠 Why your current setup partially works

| Component         | Status    |
| ----------------- | --------- |
| JFrog CLI         | ✅ working |
| Dependency repo   | ✅ working |
| Plugin resolution | ❌ broken  |
| Internet access   | ❌ blocked |

---

## 🎯 Bottom Line

👉 Your build fails because:

* Plugin resolution is still external
* Artifactory is not configured for plugins

👉 Fix is:

* Route plugin resolution → Artifactory
* Ensure plugin exists there

---

If you want, next I can:

* Validate your Artifactory repo structure (very important in banks)
* Share **complete working GitLab CI + Gradle setup (production-grade)**
* Or help you debug plugin sync in Artifactory (most common blocker)
