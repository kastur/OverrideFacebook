.class Lcom/facebook/katana/orca/FbandroidAppModule$FacebookActivityDelegateProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbandroidAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/katana/activity/FacebookActivityDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/katana/orca/FbandroidAppModule;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/orca/FbandroidAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/katana/orca/FbandroidAppModule$FacebookActivityDelegateProvider;->a:Lcom/facebook/katana/orca/FbandroidAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/orca/FbandroidAppModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/facebook/katana/orca/FbandroidAppModule$FacebookActivityDelegateProvider;-><init>(Lcom/facebook/katana/orca/FbandroidAppModule;)V

    return-void
.end method

.method private b()Lcom/facebook/katana/activity/FacebookActivityDelegate;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;

    iget-object v1, p0, Lcom/facebook/katana/orca/FbandroidAppModule$FacebookActivityDelegateProvider;->a:Lcom/facebook/katana/orca/FbandroidAppModule;

    invoke-static {v1}, Lcom/facebook/katana/orca/FbandroidAppModule;->b(Lcom/facebook/katana/orca/FbandroidAppModule;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/katana/orca/FbandroidAppModule$FacebookActivityDelegateProvider;->b()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    return-object v0
.end method
