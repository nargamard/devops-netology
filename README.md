# devops-netology

**/.terraform/*
В исключение добавляются все файлы во всех каталогах .terraform, где бы они ни находились в пределах того каталога, где лежит файл .gitignore.

*.tfstate
Будут проигнорированы все файлы с расширением .tfstate

*.tfstate.*
Будут проигнорированы все файлы, в имени которых есть  ".tfstate".

crash.log
Будет проигнорирован файл crash.log

*.tfvars
Будут проигнорированы все файлы с расширением .tfvars

override.tf
Будет проигнорирован файл override.tf 

override.tf.json
Будет проигнорирован файл override.tf.json

*_override.tf
Будут проигнорированы все файлы, в имени которых в конце есть *_override.tf

*_override.tf.json
Будут проигнорированы все файлы, в имени которых в конце есть "_override.tf.json"

.terraformrc
Будет проигнорирован файл .terraformrc

terraform.rc
Будет проигнорирован файл terraform.rc
