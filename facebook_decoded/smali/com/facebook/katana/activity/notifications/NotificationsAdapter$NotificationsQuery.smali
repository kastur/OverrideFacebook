.class public interface abstract Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsQuery;
.super Ljava/lang/Object;
.source "NotificationsAdapter.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "notif_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sender_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sender_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sender_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "updated"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "href"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_read"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "icon_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "object_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "object_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "join_data_string"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsQuery;->a:[Ljava/lang/String;

    return-void
.end method
