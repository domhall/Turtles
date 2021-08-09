REMOTE_URL=$(terraform output -raw repository_turtles_ssh_clone_url)
git remote remove origin
git remote add origin ${REMOTE_URL}
git push -u origin main
