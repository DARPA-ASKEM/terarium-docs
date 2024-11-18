---
title: "Using Terarium"
---

# Using Terarium

Terarium is a comprehensive platform that supports your scientific modeling processes from discovery to publication. With it, you can upload, search for, modify, and simulate scientific models and easily share and reproduce your results.

## Extracting knowledge

A project in Terarium acts as a repository for resources (models, datasets, and documents) related to your modeling goals.

???+ list "Upload resources"

    1. Click **Upload** in the Resources panel.
       ![](../img/get-started/upload.png)
    2. Drag in your resources or click **open a file browser** to locate them.
    3. Click **Upload**.
    
        !!! note
    
            When you upload a PDF, Terarium automatically scans the document and extracts any linear ordinary differential equations. Depending on the size of the document, this may take some time. Click <span class="sr-only" id="notifications-icon-label">Notifications</span> :material-bell-outline:{ title="Notifications" aria-labelledBy="notifications-icon-label" } in the nav bar to check the progress of an extraction. 

## Constructing scientific modeling workflows

A workflow in Terarium is a graphical editor for building and executing complex modeling processes.

![](../img/get-started/workflow.png)

Graph nodes represent resources or operators that handle transformation and simulation. Connect them to recreate models from documents, iteratively modify them, and run sophisticated calibration, optimization, and simulation tasks.

???+ list "Create a workflow"

    1. Click :octicons-plus-24:{ aria-hidden="true" } **New** in the Workflows section of the Resource panel.
    2. Enter a name for the new workflow and click **Save**.
    2. Drag Models, Datasets, or Documents into the workflow graph from the Resources panel.
    3. Right-click anywhere on the workflow graph and choose from the library of operators.
    4. Connect your resources and operators by clicking ![](../img/output.png){ aria-hidden="true" class="node-icon" } on the right side of a node and then clicking a corresponding input ![](../img/input.png){ aria-hidden="true" class="node-icon" } on the left side of the destination node.
    
        ???+ note
    
            - Labels on inputs show you the types of resources and operators each operator requires.
            - Some operators don't display outputs until you click **Open** or **Edit** and modify their settings or run their associated task.

## Modifying models and data

Using Terarium's library of operators, you can recreate, reuse, and modify existing models and datasets to suit your modeling needs:

<div class="grid cards" markdown>

-   __Modeling__

    ---

    - [**Create model from equations**](../modeling/create-model-from-equations.md) [:material-github:{ title="GitHub" aria-label="GitHub" class="md-annotation__index"}](https://github.com/DARPA-ASKEM/model-service/blob/07ae21cae2d5465f9ac5b5bbbe6c7b28b7259f04/src/ModelService.jl#L54){ target="_blank" rel="noopener noreferrer" }  
        Build a model using LaTeX expressions or equations extracted from a paper.

    - [**Edit model**](../modeling/edit-model.md) [:material-github:{ title="GitHub" aria-label="GitHub" class="md-annotation__index" }](https://github.com/DARPA-ASKEM/beaker-kernel/blob/main/docs/contexts_mira_model_edit.md){ target="_blank" rel="noopener noreferrer" }  
        Modify model states and transitions using a graphical template editor or an AI assistant.

    - [**Stratify model**](../modeling/stratify-model.md) [:material-github:{ title="GitHub" aria-label="GitHub" class="md-annotation__index" }](https://github.com/gyorilab/mira/blob/main/notebooks/viz_strat_petri.ipynb){ target="_blank" rel="noopener noreferrer" }  
        Divide populations into subsets along characteristics such as age or location.

    - [**Compare models**](../modeling/compare-models.md) [:material-github:{ title="GitHub" aria-label="GitHub" class="md-annotation__index" }](https://github.com/gyorilab/mira/blob/7314765ab409ddc9647269ad2381055f1cd67706/notebooks/hackathon_2023.10/dkg_grounding_model_comparison.ipynb#L307){ target="_blank" rel="noopener noreferrer" }  
        Generate side-by-side summaries of two or more models or prompt an AI assistant to visually compare them.

-   __Data__

    ---

    - [**Transform dataset**](../datasets/transform-dataset.md) [:octicons-book-24:{ title="User Guide" aria-label="User Guide" class="md-annotation__index" }](https://pandas.pydata.org/docs/user_guide/index.html#user-guide){ target="_blank" rel="noopener noreferrer" }  
        Modify a dataset by explaining your changes to an AI assistant.

</div>

Some operators have a dual-view design, with a wizard for common settings and a notebook for direct coding. An AI assistant in the notebook helps you generate and refine code even if you don't have any programming experience.

???+ list "Access resource or operator settings"

    1. Click **Open** or **Edit** on the operator node.
    2. Switch to the Wizard or Notebook view depending on your preference.
    
        ???+ note
    
            Any changes you make in the Wizard view are automatically translated into code in the Notebook view.

## Configuring and simulating models

Terarium's library of operators also allows you to rapidly create of scenarios and interventions by linking operators to configure, validate, calibrate, and optimize models:

<div class="grid cards" markdown>

-   __Config and intervention__

    ---

    - [**Configure model**](../config-and-intervention/configure-model.md)  
        Edit variables and parameters or extract them from a reference resource.
    - [**Validate configuration**](../config-and-intervention/configure-model.md#validate-a-model-configuration) [:material-github:{ title="GitHub" aria-label="GitHub" class="md-annotation__index" }](https://github.com/siftech/funman){ target="_blank" rel="noopener noreferrer" }  
        Determine if a configuration generates valid outputs given a set of constraints.
    - [**Create intervention policy**](../config-and-intervention/create-intervention-policy.md)  

-   __Simulation__

    ---

    - [**Simulate**](../simulation/simulate-model.md) [:material-github:{ title="GitHub" aria-label="GitHub" class="md-annotation__index" }](https://github.com/ciemss/pyciemss/blob/main/pyciemss/interfaces.py#L323){ target="_blank" rel="noopener noreferrer" }  
        Run a probabilistic simulation of a model under specific conditions.
    - [**Calibrate**](../simulation/calibrate-model.md) [:material-github:{ title="GitHub" aria-label="GitHub" class="md-annotation__index" }](https://github.com/ciemss/pyciemss/blob/main/pyciemss/interfaces.py#L529){ target="_blank" rel="noopener noreferrer" }  
        Determine or update the value of model parameters given a reference dataset of observations.
    - [**Optimize intervention policy**](../config-and-intervention/create-intervention-policy.md#optimize-an-intervention-policy) [:material-github:{ title="GitHub" aria-label="GitHub" class="md-annotation__index" }](https://github.com/ciemss/pyciemss/blob/main/pyciemss/interfaces.py#L747){ target="_blank" rel="noopener noreferrer" }  
        Determine the optimal values for variables that minimize or maximize an intervention given some constraints.    
    - [**Simulate ensemble**](../simulation/simulate-ensemble.md) [:material-github:{ title="GitHub" aria-label="GitHub" class="md-annotation__index" }](https://github.com/ciemss/pyciemss/blob/main/pyciemss/interfaces.py#L35){ target="_blank" rel="noopener noreferrer" }  
        Run a deterministic simulation of multiple models or model configurations under specific conditions.
    - [**Calibrate ensemble**](../simulation/calibrate-ensemble.md) [:material-github:{ title="GitHub" aria-label="GitHub" class="md-annotation__index" }](https://github.com/ciemss/pyciemss/blob/main/pyciemss/interfaces.py#L156){ target="_blank" rel="noopener noreferrer" }  
        Determine or update the value of model parameters given a reference dataset of observations.

</div>

Just as with operators that modify and transform resources, simulation operators support wizard and notebook views with AI-assisted configuration. 