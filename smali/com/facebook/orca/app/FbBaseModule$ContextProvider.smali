.class Lcom/facebook/orca/app/FbBaseModule$ContextProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/FbBaseModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/FbBaseModule;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method

.method private b()Landroid/content/Context;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-static {}, Lcom/facebook/orca/inject/SingletonProvider;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Should not call getContext in singleton creation. Can lead to memory leaks."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 148
    invoke-static {}, Lcom/facebook/orca/inject/ThreadLocalProvider;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "Should not call getContext in thread local creation. Can lead to memory leaks."

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-static {v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Lcom/facebook/orca/app/FbBaseModule;)Lcom/facebook/orca/inject/ContextScope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/inject/ContextScope;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 144
    goto :goto_0

    :cond_1
    move v1, v2

    .line 148
    goto :goto_1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
