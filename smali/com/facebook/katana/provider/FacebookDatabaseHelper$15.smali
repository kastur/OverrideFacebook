.class final Lcom/facebook/katana/provider/FacebookDatabaseHelper$15;
.super Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.source "FacebookDatabaseHelper.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 409
    invoke-static {}, Lcom/facebook/katana/provider/KeyValueProvider;->a()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 410
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 411
    aget-object v3, v2, v0

    invoke-static {p1, v3}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_0
    invoke-static {}, Lcom/facebook/katana/provider/KeyValueProvider;->b()[Ljava/lang/String;

    move-result-object v0

    .line 414
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 415
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    :cond_1
    return-void
.end method
