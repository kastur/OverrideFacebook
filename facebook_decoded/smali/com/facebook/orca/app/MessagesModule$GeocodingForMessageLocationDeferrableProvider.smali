.class Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationDeferrableProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1373
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1373
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationDeferrableProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;
    .locals 3

    .prologue
    .line 1377
    new-instance v1, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;

    const-class v0, Lcom/facebook/orca/location/LocationCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationDeferrableProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/location/LocationCache;

    const-class v2, Lcom/facebook/orca/location/GeocodingDeferrable;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationDeferrableProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;-><init>(Lcom/facebook/orca/location/LocationCache;Ljavax/inject/Provider;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1373
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationDeferrableProvider;->b()Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;

    move-result-object v0

    return-object v0
.end method
