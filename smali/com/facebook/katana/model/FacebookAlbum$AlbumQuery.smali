.class interface abstract Lcom/facebook/katana/model/FacebookAlbum$AlbumQuery;
.super Ljava/lang/Object;
.source "FacebookAlbum.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "owner"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cover_pid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cover_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "modified"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "visibility"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "object_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pids"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/model/FacebookAlbum$AlbumQuery;->a:[Ljava/lang/String;

    return-void
.end method
