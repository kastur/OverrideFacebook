.class public Lcom/facebook/katana/service/method/PhotosCreateAlbum;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "PhotosCreateAlbum.java"


# instance fields
.field private a:Lcom/facebook/katana/model/FacebookAlbum;

.field private f:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    const-string v3, "GET"

    const-string v4, "photos.createAlbum"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 53
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->e:Ljava/util/Map;

    const-string v1, "call_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->e:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    if-eqz p5, :cond_0

    .line 57
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->e:Ljava/util/Map;

    const-string v1, "location"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    if-eqz p6, :cond_1

    .line 60
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->e:Ljava/util/Map;

    const-string v1, "description"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_1
    if-eqz p7, :cond_2

    .line 63
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->e:Ljava/util/Map;

    const-string v1, "visible"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_2
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookAlbum;)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 85
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 87
    const-string v1, "aid"

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookAlbum;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "cover_pid"

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookAlbum;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "owner"

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookAlbum;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookAlbum;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "created"

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookAlbum;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    const-string v1, "modified"

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookAlbum;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string v1, "description"

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookAlbum;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "location"

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookAlbum;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "size"

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookAlbum;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v1, "visibility"

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookAlbum;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookAlbum;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "object_id"

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookAlbum;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->e:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    new-instance v0, Lcom/facebook/katana/model/FacebookAlbum;

    invoke-direct {v0, p1}, Lcom/facebook/katana/model/FacebookAlbum;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->a:Lcom/facebook/katana/model/FacebookAlbum;

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->a:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookAlbum;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->f:Landroid/net/Uri;

    .line 73
    return-void
.end method

.method public final h()Lcom/facebook/katana/model/FacebookAlbum;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->a:Lcom/facebook/katana/model/FacebookAlbum;

    return-object v0
.end method

.method public final i()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->f:Landroid/net/Uri;

    return-object v0
.end method
