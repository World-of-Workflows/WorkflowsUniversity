# Creates Markdown Documents for Each Chapter
# Then Consolidates them into a single PDF and a single DOCX

# Index.md (No Change)
# About
pandoc -t markdown -o 01_about.md ./docs/01_about/readme.md ./docs/01_about/versions.md

# Installation
pandoc -t markdown -o 02_Installation.md ./docs/02_Installation/README.md './docs/02_Installation/World of Workflows PE on Windows.md'

# Navigation

# GettingStarted