.class Lcom/facebook/orca/app/MessagesModule$ThreadsDbSchemaPartProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/ThreadsDbSchemaPart;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1234
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1234
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ThreadsDbSchemaPartProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private static b()Lcom/facebook/orca/database/ThreadsDbSchemaPart;
    .locals 1

    .prologue
    .line 1238
    new-instance v0, Lcom/facebook/orca/database/ThreadsDbSchemaPart;

    invoke-direct {v0}, Lcom/facebook/orca/database/ThreadsDbSchemaPart;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1234
    invoke-static {}, Lcom/facebook/orca/app/MessagesModule$ThreadsDbSchemaPartProvider;->b()Lcom/facebook/orca/database/ThreadsDbSchemaPart;

    move-result-object v0

    return-object v0
.end method