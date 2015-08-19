@ECHO OFF

set HOSTS=(  Shop  )

for %%i in %HOSTS% do (
  vagrant up --provision  %%i
  vagrant halt %%i
)