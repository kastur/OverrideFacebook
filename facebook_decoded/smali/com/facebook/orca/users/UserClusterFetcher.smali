.class public Lcom/facebook/orca/users/UserClusterFetcher;
.super Ljava/lang/Object;
.source "UserClusterFetcher.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cluster_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user_key"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/PhoneUserIterator;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method
