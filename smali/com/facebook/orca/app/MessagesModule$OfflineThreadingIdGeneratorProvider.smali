.class Lcom/facebook/orca/app/MessagesModule$OfflineThreadingIdGeneratorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2125
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2125
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$OfflineThreadingIdGeneratorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private static b()Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;
    .locals 1

    .prologue
    .line 2130
    new-instance v0, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    invoke-direct {v0}, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2125
    invoke-static {}, Lcom/facebook/orca/app/MessagesModule$OfflineThreadingIdGeneratorProvider;->b()Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    move-result-object v0

    return-object v0
.end method
