.class final Lcom/facebook/katana/provider/ConnectionsProvider$2;
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
    .line 362
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 363
    const-string v0, "_id"

    const-string v1, "_id"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v0, "user_id"

    const-string v1, "user_id"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v0, "first_name"

    const-string v1, "first_name"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v0, "last_name"

    const-string v1, "last_name"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v0, "display_name"

    const-string v1, "display_name"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v0, "user_image_url"

    const-string v1, "user_image_url"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v0, "user_image"

    const-string v1, "user_image"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v0, "birthday_month"

    const-string v1, "birthday_month"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v0, "birthday_day"

    const-string v1, "birthday_day"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v0, "birthday_year"

    const-string v1, "birthday_year"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v0, "cell"

    const-string v1, "cell"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v0, "other"

    const-string v1, "other"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v0, "email"

    const-string v1, "email"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v0, "hash"

    const-string v1, "hash"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    return-void
.end method
