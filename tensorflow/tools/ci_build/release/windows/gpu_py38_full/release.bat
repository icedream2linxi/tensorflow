:: Copyright 2019 The TensorFlow Authors. All Rights Reserved.
::
:: Licensed under the Apache License, Version 2.0 (the "License");
:: you may not use this file except in compliance with the License.
:: You may obtain a copy of the License at
::
::     http://www.apache.org/licenses/LICENSE-2.0
::
:: Unless required by applicable law or agreed to in writing, software
:: distributed under the License is distributed on an "AS IS" BASIS,
:: WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
:: See the License for the specific language governing permissions and
:: limitations under the License.
:: =============================================================================

SET PYTHON_DIRECTORY=Python38

CALL tensorflow\tools\ci_build\release\common_win.bat

IF "%SKIP_TEST%" == "1" (
    call tensorflow\tools\ci_build\windows\gpu\pip\run.bat --release_build --skip_test
) ELSE (
    call tensorflow\tools\ci_build\windows\gpu\pip\run.bat --release_build
)
