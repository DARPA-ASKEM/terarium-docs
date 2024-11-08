---
title: Review and enrich a dataset
---

# Review and enrich a dataset

Once you have [uploaded a dataset into your project](../upload-resources/index.md), you can open it to:

- Explore and summarize its data and columns.
- Manually add metadata that explains the data in each column.
- Automatically enrich metadata using documents in your dataset or without additional context.

## Review a dataset

To get an understanding of your data, you can open a dataset and review its columns and a selection of its rows. A dataset resource previews up to 100 rows of data.

??? list "To open a dataset"

    - Perform one of the following actions:
      - In the Resources panel, click the name of the dataset.
      - On a Dataset node in the workflow graph, click **Open**.

??? list "To view the raw data in a dataset"

    - Click **Data** in the navigation list on the right.

??? list "To download a dataset"

    - Next to the dataset name, click :fontawesome-solid-ellipsis-vertical:{ title="Menu" aria-label="Menu" } > :octicons-download-24:{ aria-hidden="true"} **Download**.

## Enrich a dataset

Terarium's enrichment service can automatically populate dataset descriptions and column metadata based on the documents in your project. When you enrich a dataset, the service looks at a selected document to find and apply definitions for concepts.

???+ tip

    Curating concepts improves structural comparison and alignment of models and data.

![Metadata and column summaries for a SIDARTHE dataset](../img/data/data-details.png)

???+ list "To enrich dataset metadata"

    1. Click **Enrich metadata**.
    2. Perform one of the following actions:
    
        - To enrich metadata without selecting a document, click **Generate information without context**.
        - To use a document, select the document title.
    
    3. Click **Enrich**.
    4. Review the updated description and column information. 
    5. Click **Save**.