.class final Lcom/facebook/katana/provider/ConnectionsProvider$4;
.super Ljava/util/HashSet;
.source "ConnectionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 388
    const-string v0, "user_id"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/ConnectionsProvider$4;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v0, "first_name"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/ConnectionsProvider$4;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v0, "last_name"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/ConnectionsProvider$4;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v0, "birthday_month"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/ConnectionsProvider$4;->add(Ljava/lang/Object;)Z

    .line 392
    const-string v0, "birthday_day"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/ConnectionsProvider$4;->add(Ljava/lang/Object;)Z

    .line 393
    const-string v0, "birthday_year"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/ConnectionsProvider$4;->add(Ljava/lang/Object;)Z

    .line 394
    const-string v0, "cell"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/ConnectionsProvider$4;->add(Ljava/lang/Object;)Z

    .line 395
    const-string v0, "other"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/ConnectionsProvider$4;->add(Ljava/lang/Object;)Z

    .line 396
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/ConnectionsProvider$4;->add(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method
