# Lauterbach Trace32 ZSH configuration
#
# Prepare a Lauterbach hardware debugger environment.

t32_bail() {
  echo "Set T32SYS your installation folder for the Lauterbach T32 plugin." >&2
}

t32_init() {
  export T32SYS
  export T32TMP=/tmp
  export T32ID=T32

  # adjust font directory
  #mkfontdir "$T32SYS/fonts"
  if [[ -n "$DISPLAY" ]] ; then
    xset +fp "$T32SYS/fonts"
    xset  fp rehash
  fi

  case "$(uname -s)" in
    Linux) case "$(uname -m)" in
             x86_64)    export PATH="$PATH:$T32SYS/bin/pc_linux64"
	                ;;
	     i[3456]86) export PATH="$PATH:$T32SYS/bin/pc_linux"
		        ;;
           esac
           ;;
  esac
}

t32_init_plugin() {
	# try "default" (as in RTFM) installation location
	[[ -d "$T32SYS" ]] || T32SYS=/opt/t32

	[[ -d "$T32SYS" ]] && t32_init || t32_bail
}

t32_init_plugin
