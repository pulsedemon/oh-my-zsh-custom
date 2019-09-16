function utest() {
  settings="DJANGO_SETTINGS_MODULE=test.unit.settings"

  test_path=""
  if [[ -n $1 ]]; then
    test_path=".$1"
  fi


  # test_options="-v 3 --failfast --keepdb --with-coverage"
  test_options="-v 3 --failfast --keepdb"
  test_command="$settings python manage.py test test.unit$test_path $test_options"
  eval ${test_command}
}
