.class public Lcom/facebook/orca/database/DbThreadsPropertyUtil;
.super Lcom/facebook/orca/database/DbPropertyUtil;
.source "DbThreadsPropertyUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/database/DbPropertyUtil",
        "<",
        "Lcom/facebook/orca/database/DbThreadPropertyKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    const-string v0, "properties"

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/database/DbPropertyUtil;-><init>(Ljavax/inject/Provider;Ljava/lang/String;)V

    .line 16
    return-void
.end method
