# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/code/contentful/user_interface"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "user_interface"; then

  # Create a new window inline within session layout definition.
  new_window "user_interface"
  run_cmd "v"
  new_window "tmux"
  run_cmd "npm install"
  run_cmd "npm run dev-preview"

  # Load a defined window layout.
  # load_window "side-term"

  # Select the default active window on session creation.
  # select_window 0
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
