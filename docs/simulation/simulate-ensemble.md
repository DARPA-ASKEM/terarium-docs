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

???+ list "Run an ensemble simulation"

    1. [Configure two or more models](../config-and-intervention/configure-model.md).
    2. Right-click anywhere on the workflow graph and select **Simulation** > **Simulate ensemble**.
    3. Connect the Configure model outputs to the Simulate ensemble inputs.
    4. Click **Open**.
    5. Create a mapping between the state variables of the model configurations.
    6. Enter custom weights for the model configurations to specify your confidence in them.
    7. Set the time span:
        - **Start** and **End Step**
        - **Number of samples**
    8. Click :material-play-outline:{ aria-hidden="true" } **Run**.

#### Troubleshooting

Some tips for troubleshooting ensemble simulation.

	  - First, try simulating each model independently to confirm the models are written and configured correctly.
	  - Set the `Relative certainty` under `Model weights` to one for each model. If you would like to adjust this setting, proceed slowly and cautiously. If you would like to include a preference for one model over the other(s), start by increasing its `Relative certainty` to 2, then 3, and so on.
	  - Do your models contain uncertainty in parameter values? If not, only one sample is needed (the default number of samples is set to 100).
    - If you plan to run your simulation for a long time and/or with a large number of samples (for example, `End time` or `Number of samples` > 100), we recommend setting these inputs to a lower value (like 10 or 20) and trying a test run to check for errors. 
		- The PyCIEMSS error messages should be descriptive and offer some guidance as to how to proceed. However, the error messages from `Pyro` or `torchdiffeq` may be less clear. Some common errors you might encounter reference Cholesky factorization (with the message, "The factorization could not be completed because the input is not positive-definite"), and `AssertionError` is thrown with the message, "underflow in dt 0.0". Assuming you were able to simulate each model independently, check that your candidate models are on the same scale and have similar initial conditions. You will likely encounter an error if one of your models assumes a population of 10 million, while another has a population of 1,000, and similarly if one model is normalized to a population of one while the others are not. 
	  - We recommend running the simulation on `Normal` mode using the `dopri5` solver method.
