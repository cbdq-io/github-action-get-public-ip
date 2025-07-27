# 🚀 Get Resilient Public IP

A lightweight, resilient GitHub Action that determines the **public IPv4 address** of the current GitHub Actions runner by attempting multiple fallback IP discovery services.

> Ideal for use cases such as temporarily whitelisting the runner IP for secure provisioning (e.g., firewalls, cloud APIs, Kubernetes control planes, etc.).

---

## 📦 Features

* ✅ Tries multiple IP lookup services until one succeeds
* 🛡️ Reliable in case of individual service failures or throttling
* 🔧 Accepts **custom list of IP sources** (optional)
* 🧺 Includes a reusable CI test workflow

---

## 📦 Usage

### 🔺 Basic (Use Default Sources)

```yaml
- uses: cbdq-io/github-action-get-public-ip@v1
  id: ip_step

- run: echo "Public IP is ${{ steps.ip_step.outputs.ip }}"
```

### 🔺 Custom Sources

Override the list of public IP services if you prefer to control or test specific endpoints:

```yaml
- uses: cbdq-io/github-action-get-public-ip@v1
  id: ip_custom
  with:
    sources: |
      https://api.ipify.org
      https://checkip.amazonaws.com
```

---

## 🔧 Inputs

| Name      | Description                                                                                                                                                                                   |
| --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `sources` | *(optional)* Newline-separated list of URLs to use for public IP discovery. The action will try each in order until one returns a valid IPv4 address. Defaults to a predefined, reliable set. |

**Default value:**

```text
https://ipv4.icanhazip.com
https://ifconfig.me
https://api.ipify.org
https://checkip.amazonaws.com
https://ipinfo.io/ip
```

---

## 📤 Outputs

| Name | Description                                                   |
| ---- | ------------------------------------------------------------- |
| `ip` | The detected public IPv4 address of the GitHub Actions runner |

---

## ✅ Example Output

```
✅ IP found: 203.0.113.42
```

You can use this value in your Terraform pipelines, cloud CLI configs, etc.

---

## 📄 License

[BSD-3](LICENSE)

---

## 💬 Feedback & Contributions

* Issues and PRs welcome!
* Ideas for IPv6 or DNS integration also appreciated.
