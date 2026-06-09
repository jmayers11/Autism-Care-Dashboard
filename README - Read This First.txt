AUTISM CARE DASHBOARD — SETUP INSTRUCTIONS
==========================================

WHAT YOU NEED IN THE SAME FOLDER:
  - Autism Care Dashboard.html
  - Launch Autism Care Dashboard.bat

HOW TO USE (Windows):
---------------------
1. Put both files in the same folder (e.g. your Desktop)
2. Double-click "Launch Autism Care Dashboard.bat"
3. A black window opens — that is the server, DO NOT close it
4. Your browser opens automatically to the app
5. Use the app normally, including Google Drive sync
6. When done, close the browser tab, then close the black window

FIRST TIME GOOGLE SIGN-IN:
---------------------------
Before Google Drive sync works, do this once in Google Console:
  1. Go to console.cloud.google.com
  2. APIs & Services → OAuth consent screen → Test users
  3. Add your Gmail address as a test user
  4. APIs & Services → Credentials → your OAuth Client ID
  5. Under "Authorized JavaScript origins" add:
       http://localhost
       http://localhost:8080
       http://localhost:8081
  6. Under "Authorized redirect URIs" add:
       http://localhost
       http://localhost:8080
       http://localhost:8081
  7. Click Save, wait 2 minutes, then try again

IF PYTHON IS NOT INSTALLED:
---------------------------
Download it free from: https://www.python.org/downloads/
During install, CHECK the box that says "Add Python to PATH"
Then try the launcher again.

YOUR DATA IS ALWAYS SAFE:
-------------------------
All your data stays in the browser on your device.
Use Data & Settings → Export Backup regularly to keep a copy.
