.class public abstract Lcom/facebook/orca/inject/AbstractModule;
.super Ljava/lang/Object;
.source "AbstractModule.java"

# interfaces
.implements Lcom/facebook/orca/inject/Module;


# instance fields
.field private a:Lcom/facebook/orca/inject/Binder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;
    .locals 1
    .parameter
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

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractModule;->a:Lcom/facebook/orca/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/orca/inject/Binder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;
    .locals 1
    .parameter
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

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractModule;->a:Lcom/facebook/orca/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/orca/inject/Binder;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()V
.end method

.method public final a(Lcom/facebook/orca/inject/Binder;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/facebook/orca/inject/AbstractModule;->a:Lcom/facebook/orca/inject/Binder;

    .line 19
    invoke-virtual {p0}, Lcom/facebook/orca/inject/AbstractModule;->a()V

    .line 20
    return-void
.end method

.method protected final a(Lcom/facebook/orca/inject/Module;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractModule;->a:Lcom/facebook/orca/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/orca/inject/Binder;->a(Lcom/facebook/orca/inject/Module;)V

    .line 71
    return-void
.end method

.method protected final b(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;
    .locals 1
    .parameter
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

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractModule;->a:Lcom/facebook/orca/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/orca/inject/Binder;->b(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;
    .locals 1
    .parameter
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

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractModule;->a:Lcom/facebook/orca/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/orca/inject/Binder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    return-object v0
.end method
