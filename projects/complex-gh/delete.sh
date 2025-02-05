# Inicialização automática dos componentes 
# de cada diretório de `k8s`.
export ROOT=k8s
for dir in $(ls $ROOT);
do kubectl delete -f $ROOT/$dir;
done
