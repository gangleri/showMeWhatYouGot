#!/usr/bin/env bash
declare -A tools

[[ -f "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"

tools=(
  ["node"]="`node --version`"
  ["nvm"]="`nvm --version`"
  ["vue"]="`vue --version`"
  ["go"]="`go version`"
  ["python"]="`python --version 2>&1`"
  ["python3"]="`python3 --version`"
  )

msg=""
for t in "${!tools[@]}"; do
  printf -v msg "%s 	%-10s 	 	 	${tools[$t]}\n" "$msg" ${t}
done

dialog --title "Show Me What You Got" --no-collapse --msgbox "${msg}" 20 80
