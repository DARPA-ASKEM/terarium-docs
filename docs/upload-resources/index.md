---
title: "Upload modeling resources"
---

# Upload modeling resources

With Terarium, you can upload, store and manage resources needed for your modeling and simulation workflows. You can upload documents, models, and datasets from: 

- [Your computer](#upload-your-own-resources).
- [GitHub code repositories](#upload-resources-from-a-github-repository).

You can also [copy resources from other projects](#get-resources-from-other-projects).

Uploaded documents, models, and datasets appear in your project resources. You can transform and simulate them by dragging them into a workflow.

!!! note

    Uploaded documents run through an [extraction process](#pdf-extraction) that, depending on the size of the PDF, make take some time.  

## Upload resources

### Upload your own resources

**Upload** in the Resources panel lets you add resources from your computer.

![Upload dialog configured to upload and extract metadata from a scientific paper on COVID-19](../img/resources/upload.png)

???+ list "To upload resources"

    1. In the Resource panel, click **Upload**.
    2. Perform one of the following actions:
        - Drag your files into the Upload resources dialog.
        - Click **open a file browser** to navigate to the location of the files you want to add.
    3. Click **Upload**.

### Upload resources from a GitHub repository

You can import the following resources directly from a GitHub repository:

- Data files (CSV, JSON, TSV, XML, YAML / YML).
- Document files (PDF, TXT, MD)
- Unknown files (if you specify which resource type to import it as)

![Import dialog showing the directory structure of the nytimes/covid-19-data GitHub repository](../img/resources/github.png)

???+ list "To import resources from a GitHub URL"

    1. In the Resource panel, click **Upload**.
    2. Enter the URL of the repository in the format *https://github.com/nytimes/covid-19-data*.
    3. Click **Upload**.
    4. Select the data and documents you want to import. 
    5. To import an unknown file type, select it and choose whether you want to import it as data or a document.
    6. Click **Import files** or **Import repo to project**.

### PDF Extraction

Most resources you upload are available for use right away. When you upload a PDF document however, Terarium begins extracting any linear ordinary differential equations it finds in the text. Depending on the size of the PDF, this process can take some time.

!!! note

    The extractor isn't optimized to handle every way that equations can represent models. Before using any extracted equations to [create a model from equations](../modeling/create-model-from-equations.md), check and edit them if necessary.

???+ list "To check the status of a PDF extraction"

    - Click :material-bell-outline:{ title="Notifications" aria-label="Notifications"}.

## Get resources from other projects

You can also get resources by copying them from other projects in Terarium.

??? list "To get a model or dataset from another project"

    1. Open the project that contains the model or dataset.
    2. Open the model or dataset by clicking its name in the Resources panel.
    3. Next to the model or dataset name, click :fontawesome-solid-ellipsis-vertical:{ title="Menu" aria-label="Menu" } > :octicons-plus-24:{ aria-hidden="true" } **Add to project** and select your project.

??? list "To get a document from another project"

    1. Open the project that contains the document.
    2. Open the document by clicking its name in the Resources panel.
    3. Click :fontawesome-solid-ellipsis:{ title="Menu" aria-label="Menu" } > :octicons-download-24:{ aria-hidden="true"} **Download this file** and save it to your computer.
    4. Open your project and [reupload the document](#upload-your-own-resources).