.class final Lcom/facebook/katana/service/method/SyncAlbums$1;
.super Ljava/lang/Object;
.source "SyncAlbums.java"

# interfaces
.implements Lcom/facebook/katana/util/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/util/Factory",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:J

.field private synthetic b:Landroid/content/ContentResolver;

.field private synthetic c:Ljava/util/Collection;


# direct methods
.method constructor <init>(JLandroid/content/ContentResolver;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/facebook/katana/service/method/SyncAlbums$1;->a:J

    iput-object p3, p0, Lcom/facebook/katana/service/method/SyncAlbums$1;->b:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/facebook/katana/service/method/SyncAlbums$1;->c:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/facebook/katana/service/method/SyncAlbums$1;->a:J

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/SyncAlbums;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncAlbums$1;->b:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/facebook/katana/service/method/SyncAlbums$1;->c:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/AlbumSyncModel;->a(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncAlbums$1;->b:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/facebook/katana/service/method/SyncAlbums$1;->a:J

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/service/method/AlbumSyncModel;->a(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/facebook/katana/service/method/SyncAlbums$1;->b()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
