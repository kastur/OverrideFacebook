.class Lcom/facebook/orca/app/MessagesModule$DbClockProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/DbClock;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2364
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2364
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$DbClockProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private static b()Lcom/facebook/orca/database/DbClock;
    .locals 1

    .prologue
    .line 2368
    new-instance v0, Lcom/facebook/orca/database/DbClock;

    invoke-direct {v0}, Lcom/facebook/orca/database/DbClock;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2364
    invoke-static {}, Lcom/facebook/orca/app/MessagesModule$DbClockProvider;->b()Lcom/facebook/orca/database/DbClock;

    move-result-object v0

    return-object v0
.end method
