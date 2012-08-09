.class final Lcom/facebook/katana/service/method/PostLoginSyncRequest$1;
.super Ljava/util/HashSet;
.source "PostLoginSyncRequest.java"


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
    .line 41
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 43
    const-string v0, "gkSync"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$1;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v0, "userSetting"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$1;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method
