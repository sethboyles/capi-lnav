# Setup

1. Install [lnav](https://github.com/tstack/lnav):
	
```
brew install lnav
```

1. Copy (or link) the contents of the `formats` directory to `~/.config/lnav/formats/installed/`:

```
cp -a formats/. ~/.config/lnav/formats/installed/
```
 
# Usage

Use `extract_nginx_logs.sh` to extract and untar all of the nginx logs from cloud_controller log bundles in your current directory.

Once extracted, run `analyze_bundle.sh` with the directory as the argument:

```
./analyze_bundle.sh ~/my_logs/
```

