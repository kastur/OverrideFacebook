.class public interface abstract Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;
.super Ljava/lang/Object;
.source "AnnotatedBindingBuilder.java"

# interfaces
.implements Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/inject/binder/LinkedBindingBuilder",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/facebook/orca/inject/binder/LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation
.end method
