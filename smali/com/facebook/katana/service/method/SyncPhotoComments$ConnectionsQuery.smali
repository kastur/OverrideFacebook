.class interface abstract Lcom/facebook/katana/service/method/SyncPhotoComments$ConnectionsQuery;
.super Ljava/lang/Object;
.source "SyncPhotoComments.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "user_image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "connection_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/service/method/SyncPhotoComments$ConnectionsQuery;->a:[Ljava/lang/String;

    return-void
.end method
