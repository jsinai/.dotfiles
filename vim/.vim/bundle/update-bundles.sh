#!/bin/bash
for i in */
        do git -C "$i" pull --ff-only
done
echo "To update coc.nvim-release, run :CocUpdate in vim"
