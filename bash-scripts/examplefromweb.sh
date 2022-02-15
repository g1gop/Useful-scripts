clear
function main {
  echo "Please choose:

    1.  Do Something
    2.  Do something else
    3.  Exit"

    while true; do
      read SELECT
      case "$SELECT" in
        1) SELECT=func_Something;;
        2) SELECT=func_Something_else;;
        3) SELECT=exit;;
        *) echo Invalid selection.; continue
      esac
      break
    done
}

function func_Something {
  echo "In $0

    Please choose:

    1.  Do Something More
    2.  Do something More else
    3.  Exit"

  while true; do
    read SELECT
    case "$SELECT" in
      1) SELECT=func_SomethingMore;;
      2) SELECT=func_Something_More_else;;
      3) SELECT=exit;;
      *) echo Invalid selection.; continue
    esac
    break
  done
}

function func_Something_else {
  echo "in $0

  Doing something else"
  return 1
}

# ... write a function for each possible value of $SELECT...

main

while test $? -eq 0; do
  $SELECT
done
