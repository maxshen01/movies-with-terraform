1. generate a new ssh key:

`ssh-keygen -t ed25519 -C "your_email@example.com"`

2. copy its contents to github using:

`cat ~/.ssh/id_ed25519.pub`

paste it in:

GitHub → Settings → SSH and GPG keys → New SSH key.

3. update it to use ssh instead of https:

`git remote set-url origin git@github.com:maxshen01/ansible-completed-code.git
`

4. test the connection:

`ssh -T git@github.com`