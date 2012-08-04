.class Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/server/PreProcessingServiceHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1937
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1937
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/server/PreProcessingServiceHandler;
    .locals 2

    .prologue
    .line 1941
    new-instance v1, Lcom/facebook/orca/server/PreProcessingServiceHandler;

    new-instance v0, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider$1;-><init>(Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;)V

    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;->b(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {v1, v0}, Lcom/facebook/orca/server/PreProcessingServiceHandler;-><init>(Ljava/util/Set;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1937
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;->b()Lcom/facebook/orca/server/PreProcessingServiceHandler;

    move-result-object v0

    return-object v0
.end method
