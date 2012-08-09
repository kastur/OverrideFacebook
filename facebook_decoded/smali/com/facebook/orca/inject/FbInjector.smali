.class public abstract Lcom/facebook/orca/inject/FbInjector;
.super Ljava/lang/Object;
.source "FbInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/FbInjectorProvider;

    invoke-interface {v0}, Lcom/facebook/orca/inject/FbInjectorProvider;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/facebook/orca/inject/FbInjector;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/orca/inject/Module;",
            ">;)",
            "Lcom/facebook/orca/inject/FbInjector;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/orca/inject/FbInjectorImpl;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/inject/FbInjectorImpl;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/google/inject/Key;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
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
.end method

.method public abstract b(Lcom/google/inject/Key;)Ljavax/inject/Provider;
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
.end method

.method public abstract b(Ljava/lang/Class;)Ljavax/inject/Provider;
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
.end method

.method public abstract b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;
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
.end method
