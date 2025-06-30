#!/bin/bash
bash -c "$(grep '^Exec' ~/.local/share/applications/appimagekit-joplin.desktop | sed 's/^Exec=//' | sed 's/%.//')"
