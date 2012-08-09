.class public interface abstract Lcom/facebook/orca/inject/Binder;
.super Ljava/lang/Object;
.source "Binder.java"


# virtual methods
.method public abstract a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/orca/inject/binder/LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/inject/Binding;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/facebook/orca/inject/Module;)V
.end method

.method public abstract b(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/orca/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/orca/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/orca/inject/MultiBinding;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/inject/Module;",
            ">;"
        }
    .end annotation
.end method
