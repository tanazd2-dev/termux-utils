# Frequently Asked Questions – termux-utils

---

### 1. What is termux-utils?  
**termux-utils** is a collection of scripts and utilities to enhance your Termux experience, automate tasks, and simplify workflow in the terminal.

---

### 2. How do I install termux-utils?  
You can install all scripts in one go using this command:  
```bash
bash <(curl -sL https://bit.ly/4d7AzZC)
```

---

### 3. Can I contribute my own scripts?  
Yes! Follow the [CONTRIBUTING.md](CONTRIBUTING.md) guidelines to submit bug fixes, new scripts, or improvements.

---

### 4. Which license applies to the scripts?  
All scripts in this repo are licensed under the [LICENSE](LICENSE) you chose (e.g., MIT, Apache 2.0, GPL-3.0).

---

### 5. How do I report a bug or request a feature?  
Use the [ISSUE_TEMPLATE.md](ISSUE_TEMPLATE.md) to submit your bug report or feature request. Make sure to fill out all fields for faster responses.

---

### 6. Where can I get help?  
- Open an issue using the template  
- Check the README and docs  
- Contact the maintainer via email (if provided)

---

### 7. Why are the scripts so slow?  
The scripts may run slower than compiled programs because they perform **every step manually** in shell, and are **not written in C** or another compiled language. This ensures readability and easy modification, but can reduce speed.

---

### 8. How do I update the repo?  
```bash
git pull origin main
```
This fetches and merges the latest changes from the remote repository.
