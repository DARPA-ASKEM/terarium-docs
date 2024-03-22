---
title: Compare models
---

# Compare models

You can compare two or models in Terarium to see:

- A brief description of their similarities and differences.
- Side-by-side model card comparisons.
- An AI-assisted visualization of common and unique state variables and transitions across each model.

<figure markdown>![](../img/models/model-compare-operator.png)<figcaption markdown>How it works: [MIRA](https://github.com/gyorilab/mira/blob/7314765ab409ddc9647269ad2381055f1cd67706/notebooks/hackathon_2023.10/dkg_grounding_model_comparison.ipynb#L307) :octicons-link-external-24:{ alt="External link" title="External link" }</figcaption></figure>

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    Models

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    N/A

</div>

## Compare model cards

Model cards briefly summarize key aspects of the models. Available aspects include:

<div class="grid" markdown>
<div markdown>
- Model name
- Model details
- Uses
- Bias risks limitations
- Evaluation
- Technical specifications
</div>
<div markdown>
- Glossary
- Model card authors
- How to get started with the model
- Citation
- More information
- Structural information
</div>
</div>

<p class="procedure">To compare models</p>

1. From the Resources, drag the models into a workflow graph.
2. Right-click anywhere on the workflow graph and select **Work with multiple models** > **Compare models**.
3. Connect the outputs of the Model resources to the inputs of the Compare models operator.
4. Click **Open**.
5. Scroll down to review the side-by-side model cards. The overview at the top of the page may take a moment to load.

## Compare model diagrams

The AI assistant in the Compare models operator can visualize the similarities and differences of the attached models. It creates a comparison diagram for every pair of input models that color-codes the state variables and transitions that are unique to each model and common to both.

<p class="procedure">To compare models</p>

1. In the Compare models operator details, click **Notebook**.
2. Click :fontawesome-solid-angle-down:{ title="Suggested prompts" alt="Suggested prompts"" } in the prompt field and select **Compare the models and visualize and display them**.
3. Click :material-play-outline:{ aria-hidden="true" } **Run**.
4. Review the model diagrams in the Preview.
5. To make changes, modify the selected prompt or the generated code and click :material-play-outline:{ aria-hidden="true" } **Run** again.