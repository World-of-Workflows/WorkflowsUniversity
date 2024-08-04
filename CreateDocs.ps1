# Creates Markdown Documents for Each Chapter
# Then Consolidates them into a single PDF and a single DOCX

# Index.md (No Change)
# About
pandoc -t markdown --resource-path=./docs/images -o 01_about.md ./docs/01_about/readme.md ./docs/01_about/versions.md

# Installation
pandoc -t markdown --resource-path=./docs/images -o 02_Installation.md ./docs/02_Installation/README.md ./docs/02_Installation/World-of-Workflows-PE-on-Windows.md ./docs/02_Installation/World-of-Workflows-PE-on-Linux.md ./docs/02_Installation/World-of-Workflows-BE-in-Azure.md ./docs/02_Installation/wow-cluster.md ./docs/02_Installation/changing-directory.md ./docs/02_Installation/External-access.md

# Navigation
pandoc -t markdown --resource-path=./docs/images -o 03_navigation.md ./docs/03_navigation/navigation.md
# GettingStarted
pandoc -t markdown --resource-path=./docs/images -o 04_gettingstarted.md ./docs/04_getting_started/README.md ./docs/04_getting_started/create_data_structure.md ./docs/04_getting_started/adding_data.md ./docs/04_getting_started/create-workflow.md ./docs/04_getting_started/try_it_out.md 
# Database
pandoc -t markdown --resource-path=./docs/images -o 05_database.md ./docs/05_database/README.md ./docs/05_database/Creating-and-Managing-Types.md ./docs/05_database/working-with-data.md ./docs/05_database/ImportingAndExportingData.md ./docs/05_database/backup.md




# Create Final Markdown File
pandoc -t markdown --resource-path=./docs/images -o WorldOfWorkflowsUniversity.md ./01_about.md ./02_installation.md ./03_navigation.md ./04_gettingstarted.md ./05_database.md
# Create Word Doc
pandoc -t docx --resource-path=./docs/images -o WorldOfWorkflowsUniversity.docx ./01_about.md ./02_installation.md ./03_navigation.md ./04_gettingstarted.md ./05_database.md
