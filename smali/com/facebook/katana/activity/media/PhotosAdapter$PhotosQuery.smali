.class public interface abstract Lcom/facebook/katana/activity/media/PhotosAdapter$PhotosQuery;
.super Ljava/lang/Object;
.source "PhotosAdapter.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "src"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "owner"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "object_id"

    aput-object v2, v0, v1

    return-void
.end method
