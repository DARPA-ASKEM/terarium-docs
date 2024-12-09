---
title: "Validate a model configuration"
---

# Validate a model configuration

You can use the Validate configuration operator to check if a population remains constant and identify non-negativity. You can also add more constraints to check additional conditions.

<figure markdown>
![](../img/models/model-configuration-validate-operator.png)
<figcaption markdown>How it works: [funman](https://github.com/siftech/funman) :octicons-link-external-24:{ alt="External link" title="External link" }</figcaption> 
</figure>

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    - Model configuration
    - Dataset (optional)

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Validated model configuration

</div>

???+ list "Validate a model configuration"

    1. [Configure the model](configure-model.md).
    
        ??? tip
    
            The input configuration should include some distribution on the parameters to allow for an exploration of the parameter space.
    
    2. Right-click anywhere on the workflow graph and select **Config & Intervention** > **Validate configuration**.
    3. Connect the Configure model output to the Validate configuration input.
    5. Edit the validation parameters:

        - **Parameters of interest**: stricter checks are performed on selected parameters.
        - **Start** and **End time** 
        - **Number of timepoints**
        - **Tolerance**: the lower the value, the more potential boxes will be split from each variable's range, introducing more sampling and more dynamics.

        ??? tip
    
            Lowering the tolerance and checking parameters of interest can significantly increase the time it takes to run the Validate configuration operator.

    6. Click **Add new check** to specify a new constraint against which to test model configurations. Edit the constraint parameters.
        - **Constraint type** and **name of constant**
        - **Target**
        - **Start** and **End time**
        - **Lower** and **Upper bound**:
    7. Click :material-play-outline:{ aria-hidden="true" } **Run**.