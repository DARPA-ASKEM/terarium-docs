---
title: "Configure a model"
---

# Configure a model

Before you can simulate a model, you need to configure it to set the initial values and parameters for the condition you want to test.

![Model configurations table showing the initial conditions and parameters for a default configuration](../img/models/configurations.png)

The Configure model operator takes a model as an input and outputs a model configuration. You can manually enter the variable and parameter values for the output configuration or automatically extract them from an optional document or dataset (such as a contact matrix or initial populations) input.

![](../img/models/model-configure-operator.png)

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    - Model
    - Document (optional)
    - Dataset (optional)

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    - Model configuration

</div>

??? list "To configure a model"

    1. Add the model to a workflow graph.
    2. (Optional) Add a document or dataset from which you want to extract configuration values.
    2. Right-click anywhere on the workflow graph and select **Work with model** > **Configure model**.
    3. Connect the Model, Document, and Dataset operator outputs to the corresponding inputs on the Configure model operator. 
    4. On the Configure model operator, click **Open**.
    5. Choose or edit the model configuration:
    
        === "Edit or create a model configuration"
        
            1. In the Context section, enter a name for the new configuration.
            2. Scroll down to the Initial variable values and Parameters sections.
            3. Edit any of the variable or parameter values and, if needed, describe the source that informed your changes.
                + To change the type, use the dropdown list to select one of the following options: 
                    - **Constant**: Enter a single value and (optionally) increase/decrease it by a certain percent.
                    - **Distribution**: Enter a minimum and maximum value.
                    - **Time varying**: Enter a comma-separated list of values at different time steps in the format *timestep:value* (e.g., *0:25, 1:26, 2:27*).
                + To edit matrix values, click :fontawesome-solid-table-cells-large:{ aria-hidden="true" } **Matrix** or click :fontawesome-solid-greater-than:{ alt="Expand" title="Expand" } at the beginning of the row.    
            4. Repeat step c for each initial condition or parameter you want to change.
    
        === "Extract configurations from inputs"
    
            ???+ tip
    
                Extractions work best when the parameters in the inputs have descriptions and concepts.
    
            1. Click :fontawesome-solid-arrow-right-from-bracket:{ aria-hidden="true"} **Extract configurations from inputs** to attempt to extract variable and parameter values from any attached documents or datasets.
            2. Edit any of the variable or parameter values as needed.
    
        === "Choose an existing model configuration"
        
            1. Review the Suggested configurations section. Click a configuration name to review its values.
            2. Click **Apply configuration values** to choose an existing configuration as the output for this operator.
    
    
    6. Click :material-play-outline:{ aria-hidden="true" } **Run**.

## Validate a model configuration

You can use the Validate a model configuration operator to check if a population remains constant and identify non-negativity. You can also add more constraints to check additional conditions.

<figure markdown>
![](../img/models/model-configuration-validate-operator.png)
<figcaption markdown>How it works: [funman](https://github.com/siftech/funman) :octicons-link-external-24:{ alt="External link" title="External link" }</figcaption> 
</figure>

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    Model configuration

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Validated model configuration

</div>

??? list "To validate a model configuration"

    1. [Configure the model](#configure-a-model).
    
        ??? tip
    
            The input configuration should include some distribution on the parameters to allow for an exploration of the parameter space.
    
    2. Right-click anywhere on the workflow graph and select **Work with model** > **Validate configuration**.
    3. Connect the Configure model output to the Validate configuration input.
    4. Click **Review checks**.
    5. Edit the validation parameters:

        - **Start** and **End time** 
        - **Number of steps**
        - **Tolerance**: the lower the value, the more potential boxes will be split from each variable's range, introducing more sampling and more dynamics.
        - **Parameters of interest**: stricter checks are performed on selected parameters.

        ??? tip
    
            Lowering the tolerance and checking parameters of interest can significantly increase the time it takes to run the Validate configuration operator.

    6. Click **Add another constraint** to specify a new constraint against which to test model configurations. Edit the constraint parameters.
        - **Name of constant**
        - **Constraint type**
        - **Target**
        - **Start** and **End time**
        - **Lower** and **Upper bound**:
    7. Click :material-play-outline:{ aria-hidden="true" } **Run**.