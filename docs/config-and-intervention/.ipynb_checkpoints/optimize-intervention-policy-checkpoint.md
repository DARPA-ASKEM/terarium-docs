---
title: Optimize an intervention policy
---

# Optimize an intervention policy

Given a model configuration and a proposed intervention policy, use the `Optimize intervention policy` operator to identify the optimal parameter values and/or time to implement the intervention such that your specified constraints are satisfied. This approach helps you make informed decisions when faced with questions like:

> *What is the smallest possible transmission rate reduction that will keep infections below 1000 over the next 100 days?
> *When is the latest possible time an intervention that reduces the transmission rate by half may be implemented in order to ensure infections remain below 1000 over the next 100 days? 
> *What is the minimal reduction in transmission rate, and the latest time it can be applied in order to keep infections below 1000 over the next 100 days?

In addition to this guide, please find the PyCIEMSS `optimize` interface documentation [here](https://github.com/ciemss/pyciemss/blob/6a41b1a8247dd76f929488a479f4d27671120b36/pyciemss/interfaces.py#L818), and a notebook with several optimization of intervention examples [here](https://github.com/ciemss/pyciemss/blob/main/docs/source/optimize_interface.ipynb).

The examples used throughout this guide can be found in the Terarium project [Optimization best practices example](https://app.staging.terarium.ai/projects/7f77e9ab-028e-408a-a071-ffc1aca3c5e4/workflow/f3a4bec3-6069-4d21-9938-a7f58fca44a8?configHash=957d2a25&state=3182a45016024adc9d3e5087d07be057&session_state=84583a1e-25a1-40d4-8383-ef68cb2f1047&code=460d3ee6-6279-4f57-b388-42c10a04b0f8.84583a1e-25a1-40d4-8383-ef68cb2f1047.316f53e1-2b9f-439b-a300-2a5d6726355f).

<!-- <figure markdown>![](../img/models/model-optimize-operator.png)<figcaption markdown>How it works: [PyCIEMSS](https://github.com/ciemss/pyciemss/blob/main/pyciemss/interfaces.py#L747) :octicons-link-external-24:{ alt="External link" title="External link" }</figcaption></figure> -->

## Create optimize intervention policy operator
Assuming you have a [model configuration](https://github.com/DARPA-ASKEM/terarium-docs/blob/main/docs/config-and-intervention/configure-model.md), and an [intervention policy](https://github.com/DARPA-ASKEM/terarium-docs/blob/main/docs/config-and-intervention/create-intervention-policy.md) in your workflow, add an `Optimize intervention policy` operator by right-clicking in the workflow, and finding the operator in the `Simulation` menu. Then, connect your model configuration and proposed intervention policy as shown here:

![](../img/config-and-intervention/optimization/optimize_workflow.png)

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    - Model configuration
    - Intervention policy

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Optimized model configuration

</div>

???+ list "To optimize an intervention policy"

    1. [Configure the model](../config-and-intervention/configure-model.md).
    2. Right-click anywhere on the workflow graph and select **Simulation** > **Optimize intervention policy**.
    3. Connect the Configure model output to the Optimize input.
    4. Click **Edit**.
    5. Configure the optimization settings as needed:

        - **Start** and **End time**: Specify the simulation time range.
        - **Number of samples to simulate model**: Enter the number of stochastic samples to draw from the model.
        - **Solver method**: Choose whether to solve ordinary differential equations using [dopri5](https://en.wikipedia.org/wiki/Dormand-Prince_method) or [euler](https://en.wikipedia.org/wiki/Euler_method).

    6. Specify your intervention policies:

        - **Parameter**: the parameter you want to optimize.
        - **Initial guess**: your initial guess for the optimization.
        - **Lower** and **Upper bound**: how much the parameter can vary.
        - **Start time**: the start time of the model.
        
        To set additional interventions, click :octicons-plus-24:{ aria-hidden="true" } **Add more interventions**.
    
    7. Add a constraint that limits the optimized configuration:
        - Select the **target variables**.
        - Set the **Acceptable risk of failure** and **Threshold**.
    8. Click :material-play-outline:{ aria-hidden="true" } **Run**.
    9. Save the the results:
        - Enter a **Model config name** and click **Save as new model configuration**.
        - Click :fontawesome-solid-floppy-disk:{ aria-hidden="true" } **Save as new dataset**. 