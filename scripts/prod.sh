#! /bin/bash

pip freeze > requirements.txt
pip install --requirement requirements.txt
zip -r scribble-ai.zip . -x "*.git*" "*.venv*" "*.vscode*" "*.idea*" "*.DS_Store*"

git add .
git commit -m 'automated commit'
git push