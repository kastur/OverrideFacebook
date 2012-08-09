.class final Lcom/facebook/katana/provider/PushNotificationsProvider$1;
.super Ljava/util/HashMap;
.source "PushNotificationsProvider.java"


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
    .line 128
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 129
    const-string v0, "_id"

    const-string v1, "_id"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/provider/PushNotificationsProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method
