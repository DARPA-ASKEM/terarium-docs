---
title: Transform a dataset
---

# Transform a dataset

If a dataset doesn't align with your modeling goals, you can transform it by cleaning and modifying it or combining it with other datasets. Supported transformations include: 

<div class="grid cards" markdown>

-   __Manipulation__

    ---

    - Creating new variables.
    - Filtering the data.
    - Joining two or more datasets.
    - Performing mathematical operations.
    - Adding or dropping columns.
    - Sorting the data.
    - Handling missing values.
    - Converting incidence data (e.g., daily new case counts) to prevalence data (current total counts at any given time).

-   __Visualization and summarization__

    ---

    - Calculating summary statistics.
    - Describing the dataset.
    - Plotting the data.
    - Answering specific questions about the data.

</div>

The Transform dataset operator has an interactive AI assistant. You describe in plain language the changes you want to make, and the LLM-powered assistant automatically generates the code for you. 

!!! note

    The Transform dataset operator adapts to your level of coding experience. You can: 

    - Work exclusively by prompting the assistant with plain language.
    - Edit and rerun any of the assistant-generated code. 
    - Enter your own executable code to make custom transformations.

## Transform dataset operator

The Transform dataset operator takes one or more datasets or simulation results as inputs and outputs a transformed dataset for use in other operations.

You can choose any step in your transformation process as the thumbnail preview on the node in the workflow graph.

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

# Work with the Transform dataset AI assistant

Each transformation you make builds off your earlier changes. The Transform dataset operator can perform more than one command at a time. With it, you can:

??? example "Example prompts"

    * Filter the data to just location = "US"
    * Convert the date column to timestamps and plot the data
    * Create a new census column that is a rolling sum of 'value' over the previous 10 days
    * Add a new column that is the cumulative sum of the values 
    * Plot the data
    * Rename column 'cases' to 'I', column 'hospitalizations' to 'H', and 'deaths' to 'E' 

???+ list "To transform a dataset"

    1. Drag the dataset into a workflow graph.
    2. Hover over the output of the Dataset resource and click :octicons-plus-24:{ title="Link" aria-label="Link" } > **Transform dataset**.
    3. On the new Transform dataset operator, click **Edit**.
    4. Use the text box at the top of the page to describe the transformation you want to make and then click :octicons-paper-airplane-24:{ style="transform: rotate(-45deg);" title="" aira-label="" }.
       ![A prompt and python code to filter convert a date column to timestamps](../img/data/transform.jpg)
    5. Scroll to the data preview under your prompt to inspect the transformation.
    6. To make changes to the transformation, edit the code and click :material-play-outline:{ title="Run again" }.
    7. Repeat steps 4 through 6 to make more transformations.
    8. At any time, save the transformed data as a new dataset in Terarium by clicking **Save for reuse**, entering a unique name in the text box and clicking **Save**.
        
        !!! tip
    
            Saved datasets appear in your Resources panel and the output of the Transform dataset operator.
    
            Download the dataset to your computer by clicking :octicons-download-24:{ aria-hidden="true" } **Download**.

### Understand how the Transform dataset operator interprets your prompt

To give you a sense whether it correctly interpreted your prompt, the Transform dataset operator: 

- Records its thoughts about your prompt (*I need to filter the dataset to only include rows with location equal to 'US'*).
- Shows how it intends to perform the transformation (*DatasetToolset.generate_python_code*).
- Comments its code to explain what it's done. 

You can show or hide these thoughts at any time by clicking **Show/Hide thoughts**.

When the transformation is complete, the Transform dataset operator shows:

- A preview of the transformed data.
- Any code used to complete the transformation.
- Any applicable error codes.
- Any requested visualizations.