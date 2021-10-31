# devops-netology

**/.terraform/*
Две звёздочки перед /.terraform/ означают, что в исключение добавляются все каталоги .terraform, где бы они ни находились в пределах репозитория. Звёздочка в конце означает, что будут проигнорированы все файлы в этих каталогах

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

new line
and another new line

Добавим строчку и закоммитим из pyCharm
И ещё одну