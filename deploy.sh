BRANCH=$1

if [ "$BRANCH" == "master" ]; then
    DEPLOY_PATH="/home/azureuser/git-actions-course.github.io"
else
    DEPLOY_PATH="/home/azureuser/stage"
fi

ssh -o StrictHostKeyChecking=no azureuser@20.55.28.37 <<HTML

    cd $DEPLOY_PATH

    git pull --rebase origin $BRANCH

HTML