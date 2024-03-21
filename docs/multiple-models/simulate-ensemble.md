---
title: Simulate ensemble
---

# Simulate ensemble

More info coming soon.

<figure markdown>![](../img/models/model-simulate-ensemble-operator.png)<figcaption markdown>How it works: [PyCIEMSS](https://github.com/ciemss/pyciemss/blob/main/pyciemss/interfaces.py#L35) :octicons-link-external-24:{ alt="External link" title="External link" }</figcaption></figure>

<div class="grid cards" markdown>

-   :material-arrow-collapse-right:{ .lg .middle aria-hidden="true" } __Inputs__

    ---

    Model configurations

-   :material-arrow-expand-right:{ .lg .middle aria-hidden="true" } __Outputs__

    ---

    Simulation data

</div>

<span class="procedure">To run an ensemble simulation</span>

1. [Configure two or more models](../models/configure-model.md).
2. Right-click anywhere on the workflow graph and select **Work with multiple models** > **Simulate ensemble**.
3. Connect the Configure model outputs to the Simulate model inputs.
4. Click **Edit**.
5. Enter custom weights for the model configurations or click **Set weights to be equal** to treat them as equally important.
6. Create a mapping between the state variables of the model configurations.
7. Set the time span:
    - **Start** and **End Step**
    - **Number of samples**
8. Click :material-play-outline:{ aria-hidden="true" } **Run**.