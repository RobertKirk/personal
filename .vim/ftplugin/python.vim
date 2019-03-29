" Check Python files with flake8 and pylint.
let b:ale_linters = ['flake8', 'pylint', 'mypy']

" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['black', 'trim_whitespace', 'remove_trailing_lines']

" pylint options
let b:ale_python_pylint_options = '--rcfile=/home/robert/smarkets/packages/smk_py_linting_utils/smk_py_linting_utils/pylintrc'

" flake8 options
let b:ale_python_flake8_options = "--max-line-length=110 --max-complexity=10 --jobs=auto --import-order-style=smarkets --application-import-names=checkout,bank_transfer,skrill,neteller,paypal,trustly,routes,run,tests,user,payment,notification,forex,fraud,auth,chat,mm-api,api,stream-api,tickets,odds-feed,email,exclusions,conftest,json_schemas --sql-excepted-names=checked,comment,count,session,state,timestamp,source,month,year,money,type --ignore=D1,W503,E201"

" mypy options
let b:ale_python_mypy_options = "--ignore-missing-imports --disallow-untyped-defs --follow-imports=silent"
let b:ale_python_mypy_ignore_invalid_syntax = 1
let b:ale_python_mypy_change_directory = 1
let b:ale_python_mypy_executable='/bin/sh -c "cd $(dirname %) && /home/robert/smarkets/bin/mypy"'

" black options
let b:ale_python_black_options = '--line-length 110 --py36 '

" isort options
let b:ale_python_isort_options = '--settings-path ~/smarkets/services/pyms/user/app/setup.cfg'
