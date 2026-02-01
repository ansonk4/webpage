#!/bin/bash
# Fix absolute paths in HTML files for GitHub Pages deployment

# Repository name (change this to match your GitHub repo name)
REPO_NAME="webpage"

# Find all HTML files and replace absolute paths with relative paths including repo name
find _site -name "*.html" -type f -exec sed -i '' \
  -e "s|href=\"/assets/|href=\"/$REPO_NAME/assets/|g" \
  -e "s|href=\"/\"|href=\"/$REPO_NAME/\"|g" \
  -e "s|href=\"/docs/\"|href=\"/$REPO_NAME/docs/\"|g" \
  -e "s|href=\"/blog/\"|href=\"/$REPO_NAME/blog/\"|g" \
  -e "s|href=\"/cv/\"|href=\"/$REPO_NAME/cv/\"|g" \
  {} \;

echo "Paths fixed for GitHub Pages deployment"
