SHUTDOWN_COMMAND="systemctl poweroff"
RESTART_COMMAND="systemctl reboot"
HIBERNATE_COMMAND="systemctl hibernate"


function prompt_shutdown {
    case "$(printf "cancel\nlock\nhibernate\nshutdown\nrestart" | dmenu -p "Shutdown")" in
        [lock]*     ) slock;;
        [hibernate]*  ) $HIBERNATE_COMMAND;;
        [shutdown]* ) $SHUTDOWN_COMMAND;;
        [restart]*  ) $RESTART_COMMAND;;
        *           ) exit;;
    esac
}

prompt_shutdown
