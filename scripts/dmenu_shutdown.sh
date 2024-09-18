SHUTDOWN_COMMAND="systemctl poweroff"
RESTART_COMMAND="systemctl reboot"
HIBERNATE_COMMAND="systemctl hibernate"
SLEEP_COMMAND="systemctl sleep"
LOCK_COMMAND="slock"


function prompt_shutdown {
    case "$(printf "cancel\nlock\nsleep\nhibernate\nshutdown\nrestart" | dmenu -p "Shutdown")" in
        [lock]*     ) $LOCK_COMMAND;;
        [sleep]*     ) $SLEEP_COMMAND;;
        [hibernate]*  ) $HIBERNATE_COMMAND;;
        [shutdown]* ) $SHUTDOWN_COMMAND;;
        [restart]*  ) $RESTART_COMMAND;;
        *           ) exit;;
    esac
}

prompt_shutdown
