.class Lcom/facebook/katana/service/method/FqlGetFriendCheckins$FqlGetCheckins;
.super Lcom/facebook/katana/service/method/FqlGeneratedQuery;
.source "FqlGetFriendCheckins.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookCheckin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    const/4 v4, 0x0

    const-string v5, "location_posts_activity"

    const-string v6, "filter=\'friend_activity\'"

    const-class v7, Lcom/facebook/katana/model/FacebookCheckin;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGeneratedQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 217
    return-void
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .parameter

    .prologue
    .line 228
    const-class v0, Lcom/facebook/katana/model/FacebookCheckin;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetFriendCheckins$FqlGetCheckins;->a:Ljava/util/List;

    .line 229
    return-void
.end method
