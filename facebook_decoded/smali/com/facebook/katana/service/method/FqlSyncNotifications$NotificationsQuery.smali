.class interface abstract Lcom/facebook/katana/service/method/FqlSyncNotifications$NotificationsQuery;
.super Ljava/lang/Object;
.source "FqlSyncNotifications.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "notif_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "object_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "object_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "updated"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "join_data_string"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_read"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/service/method/FqlSyncNotifications$NotificationsQuery;->a:[Ljava/lang/String;

    return-void
.end method
