.class Lcom/facebook/orca/app/MessagesModule$SaveDraftManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/cache/SaveDraftManager;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2312
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2312
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$SaveDraftManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/cache/SaveDraftManager;
    .locals 3

    .prologue
    .line 2316
    new-instance v0, Lcom/facebook/orca/cache/SaveDraftManager;

    const-class v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v2, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/app/MessagesModule$SaveDraftManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/cache/SaveDraftManager;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2312
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$SaveDraftManagerProvider;->b()Lcom/facebook/orca/cache/SaveDraftManager;

    move-result-object v0

    return-object v0
.end method
