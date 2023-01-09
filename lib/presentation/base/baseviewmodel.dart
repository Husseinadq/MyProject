abstract class BaseViewModel extends BaseViewModelInputs with BaseViewModelOutputs{
  // shared variables and function that will be used through any view onboarding_viewmodel

}

abstract class BaseViewModelInputs {
  void start(); // start view onboarding_viewmodel job

  void dispose(); //will be called when view onboarding_viewmodel dies
}

abstract class BaseViewModelOutputs {
  //will be implemented later
}
