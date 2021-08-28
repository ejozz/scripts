#!/bin/bash
# See the unwanted files:
git ls-files -ci --exclude-standard

# Remove the unwanted files: 
git ls-files -ci --exclude-standard -z | xargs -0 git rm --cached

# Commit changes
git commit -am "Removed unwanted files marked in .gitignore"

echo "Changes commited, now push them yourself."
