# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/.config"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "config"; then

  # Create a new window inline within session layout definition.
  new_window "nvim"
  run_cmd "cd nvim/lua/user"
  run_cmd "v"
  new_window "tmux"
  run_cmd "cd tmux"
  run_cmd "v"

  # Load a defined window layout.
  # load_window "side-term"

  # Select the default active window on session creation.
  # select_window 0
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
