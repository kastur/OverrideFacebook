.class public abstract Lcom/facebook/orca/inject/AbstractProvider;
.super Ljava/lang/Object;
.source "AbstractProvider.java"

# interfaces
.implements Lcom/facebook/orca/inject/ProviderWithInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/inject/ProviderWithInjector",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/orca/inject/FbInjector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/inject/Key;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/inject/FbInjector;->b(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/inject/FbInjector;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    .line 20
    return-void
.end method

.method protected final b(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
