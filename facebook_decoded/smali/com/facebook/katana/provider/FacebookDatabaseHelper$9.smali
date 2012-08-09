.class final Lcom/facebook/katana/provider/FacebookDatabaseHelper$9;
.super Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.source "FacebookDatabaseHelper.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-static {}, Lcom/facebook/katana/provider/MobileEventLogProvider;->a()[Ljava/lang/String;

    move-result-object v2

    .line 281
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 282
    invoke-static {p1, v4}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-static {}, Lcom/facebook/katana/provider/MobileEventLogProvider;->b()[Ljava/lang/String;

    move-result-object v1

    .line 286
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 287
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 289
    :cond_1
    return-void
.end method
