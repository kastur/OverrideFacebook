.class final Lcom/facebook/katana/provider/ConnectionsProvider$1;
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
    .line 352
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 353
    const-string v0, "_id"

    const-string v1, "_id"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v0, "user_id"

    const-string v1, "user_id"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v0, "display_name"

    const-string v1, "display_name"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v0, "connection_type"

    const-string v1, "connection_type"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v0, "user_image_url"

    const-string v1, "user_image_url"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v0, "user_image"

    const-string v1, "user_image"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v0, "hash"

    const-string v1, "hash"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-void
.end method
