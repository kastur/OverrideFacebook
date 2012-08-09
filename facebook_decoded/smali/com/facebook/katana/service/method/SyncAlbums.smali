.class public Lcom/facebook/katana/service/method/SyncAlbums;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "SyncAlbums.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/model/FacebookAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Landroid/content/Intent;

.field private final h:Ljava/lang/String;

.field private final i:J

.field private final j:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J[Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 129
    const-string v3, "GET"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/SyncAlbums;->a:Ljava/util/Map;

    .line 131
    iput-object p2, p0, Lcom/facebook/katana/service/method/SyncAlbums;->g:Landroid/content/Intent;

    .line 132
    iput-object p3, p0, Lcom/facebook/katana/service/method/SyncAlbums;->h:Ljava/lang/String;

    .line 133
    iput-wide p4, p0, Lcom/facebook/katana/service/method/SyncAlbums;->i:J

    .line 134
    iput-object p6, p0, Lcom/facebook/katana/service/method/SyncAlbums;->j:[Ljava/lang/String;

    .line 135
    iput-object p7, p0, Lcom/facebook/katana/service/method/SyncAlbums;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/SyncAlbums;->f:Z

    .line 137
    return-void
.end method

.method private static a(Landroid/content/ContentResolver;JLjava/util/Collection;)Lcom/facebook/katana/util/Factory;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/katana/model/FacebookAlbum;",
            ">;)",
            "Lcom/facebook/katana/util/Factory",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/facebook/katana/service/method/SyncAlbums$1;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/facebook/katana/service/method/SyncAlbums$1;-><init>(JLandroid/content/ContentResolver;Ljava/util/Collection;)V

    return-object v0
.end method

.method protected static a(Landroid/content/ContentResolver;JLjava/util/Collection;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/katana/model/FacebookAlbum;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/katana/service/method/SyncAlbums;->a(Landroid/content/ContentResolver;JLjava/util/Collection;)Lcom/facebook/katana/util/Factory;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move v4, p4

    move-wide v6, p1

    invoke-static/range {v0 .. v7}, Lcom/facebook/katana/service/method/AlbumSyncModel;->a(Landroid/content/ContentResolver;Ljava/util/Collection;Lcom/facebook/katana/util/Factory;ZZZJ)Lcom/facebook/katana/service/method/AlbumSyncModel$Result;

    .line 182
    return-void
.end method

.method static synthetic a(J)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/facebook/katana/service/method/SyncAlbums;->b(J)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/SyncAlbums;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/facebook/katana/service/method/SyncAlbums;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/SyncAlbums;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/facebook/katana/service/method/SyncAlbums;->f:Z

    return p1
.end method

.method private static a([Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 150
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/katana/service/method/SyncAlbums;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncAlbums;->a:Ljava/util/Map;

    return-object v0
.end method

.method private static b(J)Z
    .locals 2
    .parameter

    .prologue
    .line 155
    const-wide/16 v0, -0x1

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/katana/service/method/SyncAlbums;)J
    .locals 2
    .parameter

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/facebook/katana/service/method/SyncAlbums;->i:J

    return-wide v0
.end method

.method static synthetic d(Lcom/facebook/katana/service/method/SyncAlbums;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncAlbums;->g:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/katana/service/method/SyncAlbums;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncAlbums;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/katana/service/method/SyncAlbums;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncAlbums;->j:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 12

    .prologue
    .line 187
    const-wide/16 v10, -0x1

    .line 188
    iget-wide v0, p0, Lcom/facebook/katana/service/method/SyncAlbums;->i:J

    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncAlbums;->j:[Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/katana/service/method/SyncAlbums;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-wide/16 v10, 0xa

    .line 193
    :cond_0
    new-instance v0, Lcom/facebook/katana/service/method/FqlGetAlbums;

    iget-object v1, p0, Lcom/facebook/katana/service/method/SyncAlbums;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/service/method/SyncAlbums;->p:Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/katana/service/method/SyncAlbums;->h:Ljava/lang/String;

    iget-wide v4, p0, Lcom/facebook/katana/service/method/SyncAlbums;->i:J

    iget-object v6, p0, Lcom/facebook/katana/service/method/SyncAlbums;->j:[Ljava/lang/String;

    new-instance v7, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;

    invoke-direct {v7, p0}, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;-><init>(Lcom/facebook/katana/service/method/SyncAlbums;)V

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/facebook/katana/service/method/FqlGetAlbums;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J[Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JJ)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetAlbums;->a()V

    .line 195
    return-void
.end method
