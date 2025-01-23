---
title: Optimize an intervention policy
---


# Optimize an intervention policy

Given a model configuration and a proposed intervention policy, use the `Optimize intervention policy` operator to identify the optimal parameter values and/or time to implement an intervention such that your specified constraints are satisfied. This approach helps you make informed decisions when faced with questions like:

> *What is the smallest possible transmission rate reduction that will keep infections below 1000 over the next 100 days?*

> *When is the latest possible time an intervention that reduces the transmission rate by half may be implemented in order to ensure infections remain below 1000 over the next 100 days?*

> *What is the minimal reduction in transmission rate, and the latest time it can be applied in order to keep infections below 1000 over the next 100 days?*

In addition to this guide, please find the PyCIEMSS `optimize` interface [here](https://github.com/ciemss/pyciemss/blob/6a41b1a8247dd76f929488a479f4d27671120b36/pyciemss/interfaces.py#L818), and a notebook with several optimization of intervention examples [here](https://github.com/ciemss/pyciemss/blob/main/docs/source/optimize_interface.ipynb).

The examples used throughout this guide can be found in the Terarium project [Optimization best practices example](https://app.staging.terarium.ai/projects/7f77e9ab-028e-408a-a071-ffc1aca3c5e4/workflow/f3a4bec3-6069-4d21-9938-a7f58fca44a8?configHash=957d2a25&state=3182a45016024adc9d3e5087d07be057&session_state=84583a1e-25a1-40d4-8383-ef68cb2f1047&code=460d3ee6-6279-4f57-b388-42c10a04b0f8.84583a1e-25a1-40d4-8383-ef68cb2f1047.316f53e1-2b9f-439b-a300-2a5d6726355f).

<!-- <figure markdown>![](../img/models/model-optimize-operator.png)<figcaption markdown>How it works: [PyCIEMSS](https://github.com/ciemss/pyciemss/blob/main/pyciemss/interfaces.py#L747) :octicons-link-external-24:{ alt="External link" title="External link" }</figcaption></figure> -->

## Create optimize intervention policy operator
Assuming you have a [model configuration](https://github.com/DARPA-ASKEM/terarium-docs/blob/main/docs/config-and-intervention/configure-model.md), and an [intervention policy](https://github.com/DARPA-ASKEM/terarium-docs/blob/main/docs/config-and-intervention/create-intervention-policy.md) in your workflow, add an `Optimize intervention policy` operator by right-clicking in the workflow, and finding the operator in the `Simulation` menu. Then, connect your model configuration and proposed intervention policy as inputs. The output will be the optimized intervention policy.

<img src="../img/config-and-intervention/optimization/optimize_intervention_setup.png" alt="Optimize Intervention Setup" width="500" />

## Open the operator and set your success criteria
Select a threshold and tolerance for simulated outcomes by choosing options from the dropdown menus as follows:
> Ensure <span style="color: blue;">**A**</span> is <span style="color: blue;">**B**</span> a thresold of <span style="color: blue;">**C**</span> at <span style="color: blue;">**D**</span> in <span style="color: blue;">**E**</span>% of simulated outcomes.

- <span style="color: blue;">**A**</span>: A *state variable* from your model.
- <span style="color: blue;">**B**</span>: Should the selected state variable remain *above or below* the threshold?
- <span style="color: blue;">**C**</span>: *Threshold value* for the chosen state variable
- <span style="color: blue;">**D**</span>: *Time period of interest*, should the threshold constraint be met for *all timepoints*, or is it only required to be met by the end of the simulation, at the *last timepoint*?
- <span style="color: blue;">**E**</span>: *Risk tolerance* given as the percentage of simulated trajectories for which the threshold constraint must be met in order to adopt the intervention policy.

For example:

<img src="../img/config-and-intervention/optimization/criteria_set_threshold.png" alt="Set threshold" width="500" />

## Select how to optimize the intervention policy
Choose which aspects of your proposed intervention policy you want to optimize and how. Provide an initial guess along with minimum and maximum values to guide your optimization. Adjust the relative importance to create a weighted objective function when there are multiple parameters or start times being optimized. There are three possible targets for optimization, these are:

(1) Parameter value
> Find the <span style="color: blue;">**new value**</span> for the parameter <span style="color: green;">**parameter in intervention policy**</span> at the start time <span style="color: green;">**time of intervention in policy**</span>. The objective is the value closest to the <span style="color: blue;">**initial guess, lower bound, or upper bound**</span>.

(2) Intervention start time
> Find the <span style="color: blue;">**new start time**</span> for the parameter <span style="color: green;">**parameter in intervention policy**</span> when the value is <span style="color: green;">**value in intervention policy**</span>. The objective is the <span style="color: blue;">**initial guess, lower bound, or upper bound**</span> start time.
- Under **Intervention Time**, `Start time` and `End time` should be interpreted as the lower bound and upper bound of the time when the intervention is applied, respectively.
- Note: If your goal is to find the *latest time* an intervention could be implemented and still satisfy the constraint, you would want to make your objective the value closest to the **upper bound**.

(3) Intervention start time and parameter value
> Find the <span style="color: blue;">**new value and start time**</span> for the parameter <span style="color: green;">**parameter in intervention policy**</span>. The objective is the value closest to the <span style="color: blue;">**initial guess, lower bound, or upper bound**</span> and at the <span style="color: blue;">**initial guess, lower bound, or upper bound**</span> start time.

In this guide, we will work with the following example:

<img src="../img/config-and-intervention/optimization/set_objective_function.png" alt="Set objective function" width="500" />

## Set your optimization settings
Choose the duration of your simulation and how many sample trajectories you'd like to run. Additionally, you have the option to specify the differential equation solver method, and how the optimization will run.

- <span style="color: blue;">**Start time**</span>: Simulations begin at time t = 0, this default value is fixed
- <span style="color: blue;">**End time**</span>: Duration of simulation
- <span style="color: blue;">**Preset**</span>: This optional setting defaults to `Normal` mode, using the `dopri5` solver, setting to `Fast` will use the `euler` method.
  - Note: We recommend running in `Normal` mode.
- <span style="color: blue;">**Number of samples**</span>: Each simulation draws this number of samples from the model distribution. Select the number of samples you would like to use - the default value of 100 is great for testing and getting a sense of whether or not the given optimization will work, however, you may want to use something like 1,000 samples or more for more accurate results and a better sense of uncertainty in the model.
- <span style="color: blue;">**Solver method**</span>: The default differential equation solver is `dopri5`, an adaptive step-size, 5th-order explicit Runge-Kutta method. You also have the option to use the `euler` method, in which case you will need to specify the <span style="color: blue;">**Solver step size**</span>.
  - Note: For the best balance of speed and accuracy, we highly recommend using the `dopri5` solver method.
- **Optimizer options**
  - <span style="color: blue;">**Algorithm**</span>: The PyCIEMSS `optimize` interface provides a wrapper around the [SciPy `basinhopping` algorithm](https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.basinhopping.html), this default is fixed
  - <span style="color: blue;">**Minimizer method**</span>: `COBYLA` is the chosen [minimization method](https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.minimize.html#scipy.optimize.minimize) used in the basinhopping algorithm, this default is fixed
  - <span style="color: blue;">**Maxiter**</span>: The maximum number of iterations used in the basinhopping algorithm. Increasing `Maxiter` will explore the parameter space more thoroughly and better avoid getting trapped in local minima, but will take longer to run.
  - <span style="color: blue;">**Maxfeval**</span>: The maximum number of times the optimization function is evaluated during each iteration of the basinhopping process. Increasing `Maxfeval` may improve accuracy, but also increases computation time.

In this example, we will set the simulation to run for 200 days, and keep the default solver and optimization settings.

<img src="../img/config-and-intervention/optimization/optimization_settings.png" alt="Optimization settings" width="500" />

## Run the optimization
When everything is set how you want it, scroll back up to the top of the `Optimize intervention settings` menu and click the green `Run` button. When the optimization completes, you can view and compare the results of your model simulations with and without the optimized intervention. 

A successful optimization will look like this:

<img src="../img/config-and-intervention/optimization/optimization_success.png" alt="Optimization success" width="500" />

Unfortunately, the example optimization problem we set up above did not complete successfully. If the optimization does not complete successfully, you will need to revisit and adjust your settings. Our example failed optimization looks like this:

<img src="../img/config-and-intervention/optimization/optimization_fail.png" alt="Optimization fail" width="500" />

# Troubleshooting a failed optimization
Optimization problems of this type are extremely complex, and there are many ways and reasons why your optimization may fail. Here is a list of tips and things to try to get a successful optimization.

(1) Double check your inputs. 
  - Does your model configuration have the correct parameter values and initial states? Are the distributions around your uncertain parameters reasonable, or too large?
  - It may be a good idea to remove or tighten unnecessary sources of uncertainty. For example, in the [Terarium workspace](https://app.staging.terarium.ai/projects/7f77e9ab-028e-408a-a071-ffc1aca3c5e4/workflow/f3a4bec3-6069-4d21-9938-a7f58fca44a8), the default configuration of the SEIR model includes substantial uncertainty in the initial infectious population. By reconfiguring the model to have a fixed number of infectious individuals initially, I could still investigate how changing the tranmission rate impacts infections, and this change led to a successful optimization. 
  - Is the proposed intervention policy correct? Does the parameter you are intervening have the intended effect on the state variable of interest?

(2) Simulate the model with your proposed intervention applied.
  - Compare the results. Keep in mind that the thicker solid lines represent the *mean trajectory* of the simulations, while the optimization focuses on "worst case scenarios" as defined by your *risk tolerance*. Even if the peak of the intervened simulations is close to your desired threshold value, the range of all simulations (shown in lighter gray or green) can be much wider. Asking that the threshold not be exceeded in 95% of simulations is different than it might appear, as the mean being close to the threshold doesn't fully account for the variability, as shown in the example below.

<img src="../img/config-and-intervention/optimization/intervened_samples.png" alt="Intervened samples" width="500" />

(3) Adjust your risk tolerance.
  - This depends on the situation, for example, it might be okay for infections to remain below a certain threshold only 75% of the time; but if the threshold for hospitalizations is the number of available beds, it may not be appropriate to become more risk tolerant.

(4) Adjust your threshold.
  - Is the threshold too low or too high? It may be preferable to have a higher threshold if we can be more certain it will not be exceeded.

(5) Reasses the bounds of your intervention value or time.
  - Are the bounds reasonable? If the lower bound of your parameter is zero, we recommend using a lower bound more like 0.01 or 0.001 instead.
  - Are the bounds too restrictive?
  - Are the bounds not restrictive enough? If you want to search a wide swath of the parameter space, consider increasing the number of basinhopping iterations: `Maxiter` in **Optimizer options**. This gives you more chances to find the global minima of your optimization function.

(6) Seeing yellow? If the results of your optimization look close to successful but aren't quite there yet:
  - Try increasing the number of simulations.
  - Try increasing `Maxiter` and `Maxfeval` in **Optimizer options**.

(7) Repeat and/or try combinations of these.

<!-- <div class="grid cards" markdown>

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
        - Click :fontawesome-solid-floppy-disk:{ aria-hidden="true" } **Save as new dataset**.  -->