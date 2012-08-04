.class final Lcom/facebook/katana/provider/FacebookDatabaseHelper$7;
.super Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.source "FacebookDatabaseHelper.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-static {}, Lcom/facebook/katana/provider/MailboxProvider;->a()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 227
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 228
    aget-object v3, v2, v0

    invoke-static {p1, v3}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    const-string v0, "drop tables"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$7;->a(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/facebook/katana/provider/MailboxProvider;->b()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 234
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 235
    aget-object v3, v2, v0

    invoke-static {p1, v3}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    :cond_1
    const-string v0, "drop views"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$7;->a(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/facebook/katana/provider/MailboxProvider;->c()[Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 242
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 245
    :cond_2
    const-string v0, "create tables"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$7;->a(Ljava/lang/String;)V

    .line 246
    return-void
.end method
