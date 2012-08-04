.class Lcom/facebook/orca/app/FbBaseModule$FragmentManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Landroid/support/v4/app/FragmentManager;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/FbBaseModule;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$FragmentManagerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method

.method private b()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .prologue
    .line 204
    const-class v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule$FragmentManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 205
    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 206
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->e()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/facebook/orca/app/FbBaseModule$FragmentManagerProvider;->b()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method
