.class public interface abstract Lcom/facebook/katana/PageListAdapter$UserPagesQuery;
.super Ljava/lang/Object;
.source "PageListAdapter.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "user_image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "connection_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/PageListAdapter$UserPagesQuery;->a:[Ljava/lang/String;

    return-void
.end method
