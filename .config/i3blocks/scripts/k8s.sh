#!/usr/bin/env bash
KCONTEXT=$(kubectl config current-context 2>/dev/null)
if [[ $?=="0" ]]; then
    CC=$(kubectl config view -ojsonpath='{..current-context}')
    KNAMESPACE=$(kubectl config view -ojsonpath="{.Contexts[?(@.Name==\"$CC\")]..namespace}")
    echo "☸ $KCONTEXT/$KNAMESPACE ☸"
    echo "☸ $KCONTEXT/$KNAMESPACE ☸"
    echo \#4040FF # color
fi
