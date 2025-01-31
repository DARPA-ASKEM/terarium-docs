---
title: "Annotate your work"
---

# Annotate your work

You can capture and save insights you've gained during your modeling processes:

- Directly on the operator where you discovered them.
- On the workflow canvas.
- In the project overview.
- On charts generated through simulations and calibrations.

## Add a note to a workflow operator

You can add notes to any operator in the workflow graph.

??? list "Add a note to a workflow operator"

    1. Perform one of the following actions:
        - On the operator in the workflow graph, click <span class="sr-only" id="menu-icon-label">Menu</span> :fontawesome-solid-ellipsis-vertical:{ title="Menu" aria-labelledBy="Menu" } > :octicons-pencil-24:{ aria-hidden="true"} **Add a note**
        - In the operator details, click :octicons-pencil-24:{ aria-hidden="true"} **Add a note**.
    2. Add your note and press ++enter++.

## Create a project overview

The project overview page is another space for you to capture notes and summarize the findings and processes used in your modeling workflows.

For example, to assist with publishing a paper, you could organize insights into sections such as *Abstract*, *Intro*, *Methods*, *Results*, *Discussion*, or *References*.

???+ note "Saving your overview"

    Terarium automatically saves the state of your overview as you make changes.

??? list "Edit the project overview"

    1. In the Resources panel, click **Overview**.
    2. Enter your insights in the text field. Use the style bar to format your text.

## Add an annotation to the workflow canvas

You can add notes directly to the canvas to provide more context for the modeling decisions you've made in your workflow.

??? list "Add an annotation to the workflow canvas"

    1. Right-click on the workflow canvas and select **Text block**.
    2. Double-click `annotation text`, enter some text, and press **Ok**.
    3. Click and drag the annotation to a new location if needed.

## Annotate charts

Adding annotations to charts helps highlight key insights and guide interpretation of data. You can create annotations manually or using AI assistance.

??? list "Add annotations that call out key values and timesteps"

    To highlight notable findings, you can manually add annotations that label plotted values at key timesteps.

    1. Click anywhere on the chart to add a callout.
    2. To add more callouts without clearing the first one, hold down ++shift++ and click a new area of the chart.

??? list "Prompt an AI assistant to add chart annotations"

    You can prompt an AI assistant to automatically create annotations on the variables over time and comparison charts. Annotations are labelled or unlabelled lines that mark specific timestamps or peak values. Examples of AI-assisted annotations are listed below.

    1. In the Output settings, click <span class="sr-only" id="options-icon-label">Options</span> :octicons-gear-24:{ title="Options" aria-labelledby="options-icon-label" }.
    2. Describe the annotations you want to add and press ++enter++.

        ```{ .text .wrap }
        Draw a vertical line at day 100
        ```
        ```{ .text .wrap }
        Draw a line at the peak S after calibration
        ```
        ```{ .text .wrap }
        Draw a horizontal line at the peak of default configuration Susceptible after calibration. Label it as "important"
        ```
        ```{ .text .wrap }
        Draw a vertical line at x is 10. Don't add the label
        ```
        ```{ .text .wrap }
        Draw a line at x = 40 only for ensemble after calibration