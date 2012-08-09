.class final Lcom/facebook/katana/IntentUriHandler$2;
.super Ljava/lang/Object;
.source "IntentUriHandler.java"

# interfaces
.implements Lcom/facebook/katana/IntentUriHandler$UriHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 404
    const-string v1, "destination"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    const-string v2, "archived"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    const-string v1, "messages?query=is:archived"

    invoke-static {p1, v1}, Lcom/facebook/katana/Constants$URL;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    :goto_0
    if-eqz v1, :cond_0

    .line 415
    invoke-static {p1, v1}, Lcom/facebook/katana/util/FacebookPlatform;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 416
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 419
    :cond_0
    return-object v0

    .line 409
    :cond_1
    const-string v2, "other"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    const-string v1, "messages?sk=other"

    invoke-static {p1, v1}, Lcom/facebook/katana/Constants$URL;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
