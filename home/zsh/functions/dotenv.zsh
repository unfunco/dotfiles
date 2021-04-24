dotenv() {
  if [ -f .env ]; then
    export "$(sed '/^ *#/ d' .env)"
  else
    >&2 echo "Could not find a .env file."
    return 1
  fi
}
