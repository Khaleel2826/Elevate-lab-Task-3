# Elevate-lab-Task-3
# Basic Firewall Management using UFW on Kali Linux

## 🎯 Objective
Configure and test basic firewall rules to allow or block network traffic using UFW on Kali Linux.

---

## 🧰 Tools Used
- Kali Linux
- UFW (Uncomplicated Firewall)

---

## 🔧 Steps Performed

### 1. ✅ Check if UFW is installed and active
```bash
sudo ufw status verbose
```

If not installed:
```bash
sudo apt update
sudo apt install ufw
```

### 2. 📜 List existing firewall rules
```bash
sudo ufw status numbered
```

### 3. ⛔ Block Inbound Traffic on Port 23 (Telnet)
```bash
sudo ufw deny 23/tcp
```

### 4. 🧪 Test the Rule
```bash
telnet localhost 23
```
Expected result: `Connection refused` or timeout.

### 5. 🔓 Allow SSH on Port 22
```bash
sudo ufw allow 22/tcp
```

### 6. 🧹 Remove the Telnet Block Rule
```bash
sudo ufw status numbered
sudo ufw delete <rule-number>
```

---

## 📷 Screenshots
See `/screenshots/` folder:
- `1_ufw_status_before.png` — initial status
- `2_block_port_23.png` — after blocking Telnet
- `3_test_telnet_block.png` — testing blocked port
- `4_allow_ssh.png` — after allowing SSH
- `5_ufw_status_after.png` — rules active
- `6_delete_rule.png` — rule removal

---

## 📘 Summary
UFW simplifies Linux firewall management, allowing easy rule creation and deletion for both inbound and outbound traffic. Blocking Telnet (port 23) enhances security by disabling an insecure protocol, while allowing SSH ensures remote access remains functional.
