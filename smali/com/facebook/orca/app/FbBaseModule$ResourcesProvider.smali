.class Lcom/facebook/orca/app/FbBaseModule$ResourcesProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Landroid/content/res/Resources;",
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
    .line 156
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$ResourcesProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$ResourcesProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method

.method private b()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/orca/app/FbBaseModule$ResourcesProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-static {v0}, Lcom/facebook/orca/app/FbBaseModule;->b(Lcom/facebook/orca/app/FbBaseModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/facebook/orca/app/FbBaseModule$ResourcesProvider;->b()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
