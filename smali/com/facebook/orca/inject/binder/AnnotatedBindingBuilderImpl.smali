.class public Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilderImpl;
.super Lcom/facebook/orca/inject/binder/LinkedBindingBuilderImpl;
.source "AnnotatedBindingBuilderImpl.java"

# interfaces
.implements Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/orca/inject/binder/LinkedBindingBuilderImpl",
        "<TT;>;",
        "Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/orca/inject/Binding;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/inject/Binding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilderImpl;-><init>(Lcom/facebook/orca/inject/Binding;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;
    .locals 2
    .parameter
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

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    iget-object v1, p0, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    invoke-virtual {v1}, Lcom/facebook/orca/inject/Binding;->a()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->a()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/Binding;->a(Lcom/google/inject/Key;)V

    .line 23
    new-instance v0, Lcom/facebook/orca/inject/binder/LinkedBindingBuilderImpl;

    iget-object v1, p0, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    invoke-direct {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilderImpl;-><init>(Lcom/facebook/orca/inject/Binding;)V

    return-object v0
.end method
