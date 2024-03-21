---
title: "Edit a model"
---

# Edit a model

You can use Terarium to edit model resources in your project or even create new ones. The editor represents the model as a diagram where:

- State variables are nodes.
- Dependencies are directed edges. 

For each model framework, the editor has a set of model templates that you can use to quickly edit or create different parts of the model.

<!-- ## Add or edit an equation

Terarium represents model equations as both [MathLive](https://cortexjs.io/mathlive/virtual-keyboard/) :octicons-link-external-24: and [LaTeX](https://www.latex-project.org/) :octicons-link-external-24: expressions. You can create or edit either expression, and your changes are automatically applied to the other.

![Mathematical equations for a SIR model](../img/models/equation-edit.png)

Equations are also linked to the model diagram. Changes you make to the expressions are automatically reflected in the diagram. 

??? list "To create or edit an equation"

    1. Add the Model to a workflow graph and click **Open**.
    2. Scroll down to the Model equations section and click **Edit**.
    3. Select or create an equation to edit: 
    
        * To add a new equation, click :octicons-plus-24:{ aria-hidden="true" } **Add Equation**.
        * To edit an existing equation, click anywhere on the equation.
        * To delete an equation, hover over it and click **Delete** > **Confirm delete**.
    
    4. Edit the equation in either the **MathLive** or **LaTeX** field. Changes you make in either field are automatically reflected in the other.
    
        ??? tip "Virtual keyboard"
    
            The MathLive field has a [virtual keyboard](https://cortexjs.io/mathlive/virtual-keyboard/) :octicons-link-external-24: that helps you enter mathematical symbols and functions. Click :material-keyboard-outline:{ title="Virtual keyboard" } to enable it.
    
    5. Click **Save**.
    6. Repeat steps 3&ndash;5 to add or edit more equations.  -->

<figure markdown>
![](../img/models/model-edit-operator.png)
<figcaption markdown>How it works: [MIRA Model Edit](https://github.com/DARPA-ASKEM/beaker-kernel/blob/main/docs/contexts_mira_model_edit.md) :octicons-link-external-24:{ alt="External link" title="External link" }</figcaption> 
</figure>

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    Model

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Edited model

</div>

## Model templates

Available templates vary depending on the selected framework. Options include:

- **Natural conversion**: subject converts into outcome at a constant rate.
- **Natural production**: outcome is generated at a constant rate.
- **Natural degradation**: subject is destroyed at a constant rate
- **Controlled conversion**: subject converts into outcome at a rate that depends on some controller variable
- **Controlled production**: outcome is produced at a rate that depends on some controller variable
- **Controlled degradation**: subject is destroyed at a rate that depends on some controller variable
- **Grouped controlled conversion**: subject converts into outcome at a rate that depends on several controller variables
- **Grouped controlled production**: subject is produced at a rate  that depends on several controller variables
- **Grouped controlled degradation**: subject converts into outcome at a rate that depends on several controller variables
- **Natural replication**: subject is generated at a rate that depends on itself
- **Controlled replication**: subject generates at a rate that depends on itself and some controller variable

## Create or edit a diagram

The model diagram represents the model as a set of states and transitions connected by directed edges.

![Diagram showing the connected states and transitions in a SIR model](../img/models/diagram-edit.png)

The model diagram is linked to the model equations. Changes you make to the diagram are automatically reflected in the equations. 

??? list "To begin editing the model diagram"

    1. Add the Model to a workflow graph.
    2. Right-click anywhere on the workflow graph and select **Work with model** > **Edit model**.
    3. Connect the output port of the Model operator to the input port of the Edit model operator.
    4. Click **Edit** on the Edit model operator.
    5. Edit the model diagram:
        - To add new states and transitions, drag model templates from the panel on the left into the diagram.
        - To rename a state or transition, click the label of the node.
        - To link states across templates, click an output port on a template and connect it to another and output port on another template.
    6. To view the edited model, click **Flattened**.

<!-- ## Add or edit an observable

An observable is quantity of a model that can be measured as an "observation" data point. Terarium represents observables as both [MathLive](https://cortexjs.io/mathlive/virtual-keyboard/) :octicons-link-external-24: and [LaTeX](https://www.latex-project.org/) :octicons-link-external-24: expressions. You can create or edit either expression, and your changes are automatically applied to the other.

![Mathematical equations for a SIR model](../img/models/observable-edit.png)

??? list "To create or edit an observable"

    1. Add the Model to a workflow graph and click **Open**.
    2. Scroll down to the Model observables section and click **Edit**.
    3. Select or create an observable to edit:
    
        * To add a new observable, click :octicons-plus-24:{ aria-hidden="true" } **Add observable**.
        * To edit an existing observable, click anywhere on the observable.
        * To delete an observable, hover over it and click **Delete** > **Confirm delete**.
    
    4. Edit the observable in either the [MathLive](https://cortexjs.io/mathlive/virtual-keyboard/) :octicons-link-external-24: or [LaTeX](https://www.latex-project.org/) :octicons-link-external-24: field. Changes you make in either field are automatically reflected in the other.
    
        ??? tip "Virtual keyboard"
    
            The MathLive field has a [virtual keyboard](https://cortexjs.io/mathlive/virtual-keyboard/) :octicons-link-external-24: that helps you enter mathematical symbols and functions. Click :material-keyboard-outline:{ title="Virtual keyboard" } to enable it.
    
    5. Click **Save**.
    6. Repeat steps 3&ndash;5 to add or edit more observables. -->

## Add or edit a configuration

With model configurations, you can set the initial values and parameters for conditions you want to test.

![Model configurations table showing the initial conditions and parameters for a default configuration](../img/models/configurations.png)

For information about adding or editing a model configuration, see [Configure a model](configure-model.md).