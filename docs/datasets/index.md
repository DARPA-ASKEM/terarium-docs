---
title: "Datasets"
---

# Work with data

You can create workflows to calibrate or to configure models that use:

- Custom data from your uploaded from your computer.
- Data stored in a GitHub repository. 
- Data from the Terarium database.

## Add a dataset to your project

For information about uploading or finding datasets, see [Gather modeling resources](../modeling-resources/index.md).

Once you add dataset to your project, you can open it to view more details or add it to a workflow for use in various scientific modeling processes.

![Resource node of a SEIRD dataset for UK compartments with a 5-row preview](../img/data/data-resource.png)

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    None

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Dataset

</div>

<p class="procedure">To add a dataset to a workflow</p>

- From the Resources panel, drag the dataset into a workflow graph.

## Understand dataset descriptions

Terarium relies on large language models (LLMs) to make sense of datasets and enable data transformations of:

- Descriptions
- Columns

![Metadata and column summaries for a SIDARTHE dataset](../img/data/data-details.png)

<p class="procedure">To view the raw data in a dataset</p>

1. Click the dataset name in the Resources panel to open it in a new tab.
2. Click the **Data** tab.

### Enrich dataset descriptions

Terarium also has an enrichment service that can automatically populate dataset descriptions based on related publications you've identified. When you enrich a dataset, the service looks at your related publications to find and apply definitions for concepts.

???+ tip

    Curating concepts improves structural comparison and alignment of models and data.

<p class="procedure">To enrich a dataset description</p>

1. Open the dataset in a new tab.
2. Click **Enrich description**.
3. Perform one of the following actions:

    - To enrich descriptions without selecting a document, click **Generate descriptions**.
    - To use a document, select a publication and click **Use document to generate descriptions**. 

## Transform a dataset

Terarium has an operator with a large language model interface, TGPT, to help you clean and transform data to suit your modeling and simulation processes. With TGPT, you can use plain language to explain the changes you want to make and save the transformed data as a new resource within your project. 

<figure markdown>![Transform dataset that takes a UK compartments dataset as an input and outputs a filtered version](../img/data/transform-operator.png)<figcaption markdown>How it works: [pandas](https://pandas.pydata.org/docs/user_guide/index.html#user-guide) :octicons-link-external-24:{ alt="External link" title="External link" }</figcaption></figure>

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    - Dataset
    - Simulation output

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Dataset

</div>

Each transformation you make builds off your earlier changes. TGPT can perform more than one command at a time. With it, you can:

+ Perform math
+ Add or drop columns
+ Describe the dataset
+ Sort the data
+ Plot the data
+ Undo changes <span class="md-tag">coming soon</span>

??? example "Example prompts"

    * Filter the data to just location = "US"
    * Convert the date column to timestamps and plot the data
    * Create a new census column that is a rolling sum of 'value' over the previous 10 days
    * Add a new column that is the cumulative sum of the values 
    * Plot the data
    * Rename column 'cases' to 'I', column 'hospitalizations' to 'H', and 'deaths' to 'E' 

<p class="procedure">To use TGPT to transform a dataset</p>

1. Drag the dataset into a workflow graph.
2. Right-click the graph and select **Work with dataset** > **Transform dataset**.
3. Click the output on the Dataset operator and then click the Dataset input on the Transform dataset operator.
4. Click **Edit**.
5. Use the text box at the bottom of the page to describe the transformation you want to make and then press ++enter++.
   ![TGPT with a prompt and python code to filter convert a date column to timestamps](../img/data/transform.jpg)
6. Scroll to the data preview under your prompt to inspect the transformation.
7. To make changes to the transformation, edit the provided python code and click :material-play-outline:{ aria-hidden="true" } **Run again**.
8. Repeat steps 5 through 7 to make more transformations. 
9. At any time, save the transformed data:
    - Save the dataset as a new dataset in Terarium by clicking :material-content-save-outline:{ aria-hidden="true" } **Save as**, entering a unique name in the text box and clicking :octicons-check-24:{ title="Save" }.
    
        !!! tip
    
            Saved datasets appear in your Resources panel and the output of the Transform dataset operator.

    - Download the dataset to your computer by clicking :octicons-download-24:{ aria-hidden="true" } **Download**.

### Understand how TGPT interprets your prompt

To give you a sense whether it correctly interpreted your prompt, TGPT comments its code to explain what it's done. 

<!-- - Its thoughts about your prompt (*I need to filter the dataset to only include rows with location equal to 'US'*)
- How it intends to perform the transformation (*DatasetToolset.generate_python_code*)

You can show or hide these thoughts at any time by clicking :fontawesome-regular-eye:{ title="Show/Hide Thought"}.

??? tip "Always show or hide thoughts"

    To always show or hide thoughts, click :octicons-gear-24:{ title="Chat options" } > **Auto hide chat thoughts** / **Do not auto hide chat thoughts**. -->

When the transformation is complete, TGPT shows:

- A preview of the transformed data.
- Any python code used to complete the transformation.
- Any applicable error codes.
- Any requested visualizations.