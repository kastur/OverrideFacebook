.class final Lcom/facebook/katana/provider/ConnectionsProvider$3;
.super Ljava/util/HashMap;
.source "ConnectionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 380
    const-string v0, "_id"

    const-string v1, "_id"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v0, "user_id"

    const-string v1, "user_id"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v0, "display_name"

    const-string v1, "display_name"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v0, "user_image_url"

    const-string v1, "user_image_url"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    return-void
.end method
