.class Lcom/facebook/orca/app/MessagesModule$DbMessageCacheProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/DbMessageCache;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2281
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2281
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$DbMessageCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private static b()Lcom/facebook/orca/database/DbMessageCache;
    .locals 1

    .prologue
    .line 2285
    new-instance v0, Lcom/facebook/orca/database/DbMessageCache;

    invoke-direct {v0}, Lcom/facebook/orca/database/DbMessageCache;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2281
    invoke-static {}, Lcom/facebook/orca/app/MessagesModule$DbMessageCacheProvider;->b()Lcom/facebook/orca/database/DbMessageCache;

    move-result-object v0

    return-object v0
.end method
