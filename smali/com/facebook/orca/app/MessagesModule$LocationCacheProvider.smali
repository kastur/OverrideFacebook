.class Lcom/facebook/orca/app/MessagesModule$LocationCacheProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/location/LocationCache;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2090
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2090
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$LocationCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private static b()Lcom/facebook/orca/location/LocationCache;
    .locals 1

    .prologue
    .line 2094
    new-instance v0, Lcom/facebook/orca/location/LocationCache;

    invoke-direct {v0}, Lcom/facebook/orca/location/LocationCache;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2090
    invoke-static {}, Lcom/facebook/orca/app/MessagesModule$LocationCacheProvider;->b()Lcom/facebook/orca/location/LocationCache;

    move-result-object v0

    return-object v0
.end method
