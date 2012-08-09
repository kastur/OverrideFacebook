.class final Lcom/facebook/katana/provider/FacebookDatabaseHelper$3;
.super Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.source "FacebookDatabaseHelper.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    invoke-static {}, Lcom/facebook/katana/provider/PushNotificationsProvider;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/facebook/katana/provider/PushNotificationsProvider;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    return-void
.end method
