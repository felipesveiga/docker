images=("client" "server" "worker")
ROOT=k8s

# Building the Docker Images and pushing them to Docker Hub.
for image in "${images[@]}";
do 
    image_path="$DOCKER_USERNAME"/multi-"$image"
    docker build -t "$image_path" -f ./"$image"/Dockerfile ./"$image"
    echo Built image "$image"
    docker push "$image_path";
    echo Pushed "$image"
done

# Now, initializing the cluster's components.
for dir in $(ls $ROOT);
    do 
        kubectl apply -f $ROOT/$dir;
        echo Applied "$dir" components
done