.class public Lcom/facebook/orca/app/MessagesDataInitLockHelper;
.super Ljava/lang/Object;
.source "MessagesDataInitLockHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 25
    const-class v1, Lcom/facebook/orca/app/MessagesDataInitLock;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/MessagesDataInitLock;

    .line 26
    invoke-virtual {v0}, Lcom/facebook/orca/app/MessagesDataInitLock;->b()V

    .line 27
    return-void
.end method
