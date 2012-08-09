.class public abstract Lcom/facebook/orca/database/DbPropertyUtil;
.super Ljava/lang/Object;
.source "DbPropertyUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/orca/common/util/TypedKey;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/database/DbPropertyUtil;->c:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljavax/inject/Provider;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/orca/database/DbPropertyUtil;->a:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/facebook/orca/database/DbPropertyUtil;->b:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/common/util/TypedKey;J)J
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/facebook/orca/database/DbPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;)Ljava/lang/String;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-wide p2

    .line 47
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/common/util/TypedKey;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 28
    const-string v3, "key=?"

    .line 29
    iget-object v0, p0, Lcom/facebook/orca/database/DbPropertyUtil;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/facebook/orca/database/DbPropertyUtil;->b:Ljava/lang/String;

    sget-object v2, Lcom/facebook/orca/database/DbPropertyUtil;->c:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/orca/common/util/TypedKey;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 32
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 36
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 38
    :goto_0
    return-object v5

    .line 36
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final a(Lcom/facebook/orca/common/util/TypedKey;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 67
    const-string v0, "key"

    invoke-virtual {p1}, Lcom/facebook/orca/common/util/TypedKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "value"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/database/DbPropertyUtil;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/facebook/orca/database/DbPropertyUtil;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 70
    return-void
.end method

.method public final a(Lcom/facebook/orca/common/util/TypedKey;Z)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, p1}, Lcom/facebook/orca/database/DbPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;)Ljava/lang/String;

    move-result-object v1

    .line 55
    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b(Lcom/facebook/orca/common/util/TypedKey;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 81
    const-string v1, "key = ?"

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/database/DbPropertyUtil;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/facebook/orca/database/DbPropertyUtil;->b:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/facebook/orca/common/util/TypedKey;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public final b(Lcom/facebook/orca/common/util/TypedKey;J)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/database/DbPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public final b(Lcom/facebook/orca/common/util/TypedKey;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 77
    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/database/DbPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;Ljava/lang/String;)V

    .line 78
    return-void

    .line 77
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public final c(Lcom/facebook/orca/common/util/TypedKey;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 86
    const-string v1, "key LIKE ? "

    .line 87
    iget-object v0, p0, Lcom/facebook/orca/database/DbPropertyUtil;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/facebook/orca/database/DbPropertyUtil;->b:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/orca/common/util/TypedKey;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    return-void
.end method
